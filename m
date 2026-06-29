Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c3Y9KT30QmqlJwoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 00:39:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A7E6DF0DB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 00:39:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D301010E135;
	Mon, 29 Jun 2026 22:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B4810E120;
 Mon, 29 Jun 2026 22:39:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6987070694753976237=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_gpu/buddy=3A_bail_out_of?=
 =?utf-8?q?_try=5Fharder_when_alignment_cannot_be_honoured_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2026 22:39:20 -0000
Message-ID: <178277276065.130542.8408989256804962148@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260629074311.68836-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20260629074311.68836-1-Arunpravin.PaneerSelvam@amd.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,gitlab.freedesktop.org:url,patchwork.freedesktop.org:url,emeril.freedesktop.org:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:replyto,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5A7E6DF0DB
X-Spam: Yes

--===============6987070694753976237==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu/buddy: bail out of try_harder when alignment cannot be honoured (rev2)
URL   : https://patchwork.freedesktop.org/series/168786/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18724_full -> Patchwork_168786v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_168786v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_168786v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_168786v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-mtlp:         [PASS][1] -> [SKIP][2] +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         [PASS][4] -> [FAIL][5] +7 other tests fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_selftest@drm_cmdline_parser:
    - shard-dg2:          [PASS][6] -> [SKIP][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_selftest@drm_cmdline_parser.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_selftest@drm_cmdline_parser.html

  
#### Warnings ####

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-mtlp:         [SKIP][8] ([i915#4077]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_mmap_gtt@big-copy-odd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-mtlp:         [SKIP][10] ([i915#11151] / [i915#7828]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_chamelium_hpd@dp-hpd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_content_protection@atomic-dpms-hdcp14:
    - shard-mtlp:         [SKIP][12] ([i915#15865]) -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_content_protection@atomic-dpms-hdcp14.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_content_protection@atomic-dpms-hdcp14.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-mtlp:         [SKIP][14] ([i915#13049]) -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-512x512.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [CRASH][16] ([i915#16503]) -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-mtlp:         [SKIP][18] ([i915#15643]) -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         [SKIP][20] ([i915#15991] / [i915#1825]) -> [FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         [SKIP][22] ([i915#15990]) -> [SKIP][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-mtlp:         [SKIP][24] ([i915#15991]) -> [SKIP][25] +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-mtlp:         [SKIP][26] ([i915#15329]) -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-mtlp:         [SKIP][28] ([i915#9808]) -> [SKIP][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr@fbc-pr-basic:
    - shard-mtlp:         [SKIP][30] ([i915#9688]) -> [SKIP][31] +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_psr@fbc-pr-basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_psr@fbc-pr-basic.html

  
New tests
---------

  New tests have been introduced between CI_DRM_18724_full and Patchwork_168786v2_full:

### New IGT tests (35) ###

  * igt@gem_mmap_offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_offset@basic:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@basic-cpu-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@big-bo-tiledx:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@constant-alpha-mid:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@drm_plane_helper:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@fbchdr-1p-primscrn-spr-indfb-onoff:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@fbcpsr-stridechange:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@force-connector-state:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@hdr-1p-primscrn-pri-shrfb-draw-pwrite:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@hdr-rgb101010-draw-mmap-wc:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@i915-ref-count:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@invalid-bad-flags:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@invalid-bsd2-flag-on-vebox:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@invalid-ctx:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@lease-invalid-connector:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@legacy-resubmit-new:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@load:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@primary-y-tiled-reflect-x-90:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@read:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@reset:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@sync_multi_consumer_producer:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@syncobj-timeline-signal:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@unused-offsets:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@y-tiled-8bpp-rotate-90:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@yf-tiled-addfb-size-overflow:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.06] s

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.02] s

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.02] s

  * igt@kms_cursor_crc@cursor-alpha-transparent@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.57] s

  * igt@kms_cursor_crc@cursor-alpha-transparent@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.39] s

  * igt@kms_cursor_crc@cursor-size-change@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.78] s

  * igt@kms_cursor_crc@cursor-size-change@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.65] s

  

Known issues
------------

  Here are the changes found in Patchwork_168786v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#6230])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@api_intel_bb@crc32.html
    - shard-tglu-1:       NOTRUN -> [SKIP][33] ([i915#6230])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@api_intel_bb@crc32.html

  * igt@drm_buddy@drm_buddy:
    - shard-glk11:        NOTRUN -> [SKIP][34] +23 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk11/igt@drm_buddy@drm_buddy.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#7697])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3555] / [i915#9323])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#3555] / [i915#9323])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@gem_ccs@block-multicopy-inplace.html
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3555] / [i915#9323])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#13008])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][40] ([i915#13356] / [i915#16348])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#6335])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#280])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@kms:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][43] ([i915#13363])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4812])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#4525]) +1 other test skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fence@submit:
    - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4812])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3539] / [i915#4852])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#3711])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-mtlp:         [PASS][49] -> [FAIL][50] ([i915#16503])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_flush@basic-uc-rw-default.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@larger-than-life-batch:
    - shard-mtlp:         [PASS][51] -> [SKIP][52] ([i915#16090] / [i915#3710])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_params@larger-than-life-batch.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_exec_params@larger-than-life-batch.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][53] +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#3281]) +6 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-range:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#3281])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3281]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#4537] / [i915#4812])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#7276])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][59] ([i915#13356]) +1 other test incomplete
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][60] ([i915#13196] / [i915#13356]) +1 other test incomplete
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk11/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#4613]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#4613]) +2 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][63] ([i915#4613]) +4 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#4613]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_vme:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#284])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@gem_media_vme.html

  * igt@gem_mmap@basic:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4083])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_offset (NEW):
    - shard-snb:          NOTRUN -> [INCOMPLETE][67] ([i915#16411])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb4/igt@gem_mmap_offset.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][68] -> [TIMEOUT][69] ([i915#16021] / [i915#16168] / [i915#16349]) +1 other test timeout
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3282]) +4 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3282]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_pread@snoop.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#13717])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#5190] / [i915#8428]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#8428]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#8411])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4079])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#4077]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3297])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#3297]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#3297]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3297] / [i915#4880])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][82] ([i915#13356])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#2527]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#2527] / [i915#2856])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#2527] / [i915#2856])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#2856])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gen9_exec_parse@cmd-crossing-page.html
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#2856]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_drm_fdinfo@all-busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#14123])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@i915_drm_fdinfo@all-busy-check-all.html

  * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#14073]) +15 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html

  * igt@i915_drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#14118])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@i915_drm_fdinfo@virtual-busy-idle.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][91] -> [INCOMPLETE][92] ([i915#13356] / [i915#13820]) +1 other test incomplete
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#6590]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#12964]) +1 other test fail
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rpm@reg-read-ioctl:
    - shard-dg1:          [PASS][95] -> [DMESG-WARN][96] ([i915#4391] / [i915#4423])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@i915_pm_rpm@reg-read-ioctl.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@i915_pm_rpm@reg-read-ioctl.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk:          [PASS][97] -> [INCOMPLETE][98] ([i915#13356] / [i915#15172])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk5/igt@i915_pm_rpm@system-suspend-execbuf.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][99] -> [TIMEOUT][100] ([i915#16162])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb4/igt@i915_pm_rps@reset.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][101] -> [SKIP][102] ([i915#7984])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-4/igt@i915_power@sanity.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#16109])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@i915_query@query-topology-known-pci-ids.html
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#16109])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#4077]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#7707])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4212])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-linear:
    - shard-dg2:          NOTRUN -> [TIMEOUT][108] ([i915#16503]) +10 other tests timeout
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events-linear.html

  * igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][109] ([i915#16503] / [i915#16516]) +1 other test incomplete
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#5286]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#5286]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#5286]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#4538] / [i915#5286])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3638]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3828])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3828])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#3828])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][118] -> [TIMEOUT][119] ([i915#16503])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-snb:          [PASS][120] -> [INCOMPLETE][121] ([i915#16503])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [PASS][122] -> [FAIL][123] ([i915#15871] / [i915#16503])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4538] / [i915#5190]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          [PASS][125] -> [TIMEOUT][126] ([i915#16503])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][127] +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][128] +64 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#10307] / [i915#6095]) +88 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#6095]) +139 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#6095]) +29 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#10307] / [i915#10434] / [i915#6095])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg1:          [PASS][133] -> [INCOMPLETE][134] ([i915#16503]) +10 other tests incomplete
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][135] ([i915#16503] / [i915#16510])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#12313])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:
    - shard-glk:          NOTRUN -> [INCOMPLETE][137] ([i915#15582] / [i915#16503])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][138] ([i915#16510]) +1 other test incomplete
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][139] ([i915#16503]) +7 other tests incomplete
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#14098] / [i915#6095]) +28 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#12805])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#12805])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#12805])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#6095]) +8 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][145] ([i915#16503] / [i915#16510]) +1 other test incomplete
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [TIMEOUT][146] ([i915#16503]) +16 other tests timeout
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#6095]) +4 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#6095]) +19 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#6095]) +45 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#13781]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#13783]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color_pipeline@plane-lut3d-green-only:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#16471])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#11151] / [i915#7828]) +4 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#11151] / [i915#7828]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#11151] / [i915#7828]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_chamelium_frames@dp-frame-dump.html
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#11151] / [i915#7828]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#11151] / [i915#7828])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [PASS][158] -> [SKIP][159] ([i915#12655] / [i915#3555])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_color@deep-color.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#15330] / [i915#3116] / [i915#3299])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#15330])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#15330])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@legacy-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#15865]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_content_protection@legacy-hdcp14.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#15865])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#15865]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_content_protection@uevent-hdcp14.html
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#15865])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3555]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#13049])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#13049])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][170] ([i915#13566]) +1 other test fail
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#3555]) +3 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-rkl:          [PASS][172] -> [FAIL][173] ([i915#13566])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][174] ([i915#13566]) +3 other tests fail
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#4103])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#13046] / [i915#5354])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][177] ([i915#10056] / [i915#16503])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
    - shard-glk10:        NOTRUN -> [INCOMPLETE][178] ([i915#10056] / [i915#16503])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#9809]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [PASS][180] -> [INCOMPLETE][181] ([i915#10056] / [i915#16503])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#9067])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#9067])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][184] ([i915#16503]) +2 other tests incomplete
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
    - shard-dg1:          [PASS][185] -> [DMESG-WARN][186] ([i915#4423])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#9723])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [PASS][188] -> [SKIP][189] ([i915#3555])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#13749])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#13748])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dsc@dsc-basic-bigjoiner:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#16361])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_dsc@dsc-basic-bigjoiner.html

  * igt@kms_dsc@dsc-fractional-bpp-bigjoiner:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#16361])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_dsc@dsc-fractional-bpp-bigjoiner.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#16361]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#16361]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-bigjoiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#16361]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-bigjoiner.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#16084])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#16081])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_feature_discovery@display-4x.html
    - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#16081])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#9337])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#658])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#3637] / [i915#9934]) +2 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_flip@2x-blocking-wf_vblank.html
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#3637] / [i915#9934]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#3637] / [i915#9934]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#8381])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9934]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9934]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [TIMEOUT][208] ([i915#16503]) +1 other test timeout
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][209] ([i915#16503] / [i915#16517])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a3.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][210] ([i915#16503] / [i915#16509]) +1 other test incomplete
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:
    - shard-mtlp:         NOTRUN -> [CRASH][211] ([i915#16503])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][212] -> [FAIL][213] ([i915#13027]) +1 other test fail
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [WARN][214] ([i915#16503])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][215] ([i915#12314] / [i915#16503]) +1 other test incomplete
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a1.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [CRASH][216] ([i915#16503])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][217] ([i915#16503]) +8 other tests incomplete
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [TIMEOUT][218] ([i915#16503]) +1 other test timeout
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#15643] / [i915#5190]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#15643]) +2 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#15643]) +3 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][222] ([i915#15643]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#15643])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-glk:          [PASS][224] -> [INCOMPLETE][225] ([i915#16503]) +2 other tests incomplete
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-rkl:          [PASS][226] -> [TIMEOUT][227] ([i915#16503]) +5 other tests timeout
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [TIMEOUT][228] ([i915#16503]) +2 other tests timeout
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#15990] / [i915#8708]) +4 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#15991] / [i915#5354]) +8 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#5439])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-glk10:        NOTRUN -> [TIMEOUT][232] ([i915#16503]) +2 other tests timeout
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#15989]) +9 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:
    - shard-rkl:          [PASS][234] -> [SKIP][235] ([i915#15989]) +13 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#15990]) +2 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] +48 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#15989]) +5 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#15989]) +8 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbchdr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#15990] / [i915#8708]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#1825]) +6 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#15990] / [i915#8708]) +4 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][243] +288 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-indfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][244]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#15991]) +6 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> [SKIP][246] ([i915#15102]) +13 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsrhdr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-glk11:        NOTRUN -> [TIMEOUT][247] ([i915#16503])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk11/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#15989]) +10 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#15990]) +7 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][250] -> [SKIP][251] +7 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#15989]) +12 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-suspend:
    - shard-dg2:          [PASS][253] -> [SKIP][254] ([i915#15989]) +8 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-suspend.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_frontbuffer_tracking@hdr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#15104] / [i915#15990])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#14544]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][257] +31 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#15991] / [i915#1825]) +3 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#15102]) +13 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#15102] / [i915#3023]) +8 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-mtlp:         [PASS][261] -> [SKIP][262] ([i915#2575]) +6 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][263] ([i915#15102]) +20 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#15990])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#15102]) +14 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#15991]) +19 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_hdmi_inject@inject-4k:
    - shard-mtlp:         [PASS][267] -> [SKIP][268] ([i915#15725])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_hdmi_inject@inject-4k.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [PASS][269] -> [SKIP][270] ([i915#16518] / [i915#3555] / [i915#8228])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][271] ([i915#3555] / [i915#8228]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#12713])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [PASS][273] -> [SKIP][274] ([i915#3555] / [i915#8228]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_hdr@static-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#3555] / [i915#8228])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#14544] / [i915#15460])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#13688])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#15638] / [i915#15722])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
    - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#15638] / [i915#15722])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][280] ([i915#6301])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:
    - shard-mtlp:         [PASS][281] -> [FAIL][282] ([i915#15871]) +3 other tests fail
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-glk10:        NOTRUN -> [SKIP][283] +23 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping@pipe-a-plane-0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][284] ([i915#13026] / [i915#16503]) +1 other test incomplete
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping@pipe-a-plane-0.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier:
    - shard-dg2:          [PASS][285] -> [INCOMPLETE][286] ([i915#13026] / [i915#16503]) +1 other test incomplete
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#15709]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][288] ([i915#16503] / [i915#16513])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#16386]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][290] ([i915#13026] / [i915#16503])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#15709])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-a-plane-5:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#16386])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-a-plane-5.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][293] ([i915#16503] / [i915#16513])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html
    - shard-glk10:        NOTRUN -> [INCOMPLETE][294] ([i915#13026] / [i915#16503])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#15709]) +1 other test skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [SKIP][296] ([i915#15709]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html
    - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#15709])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html

  * igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#16112])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#13958])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_plane_multiple@2x-tiling-none.html
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#13958])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#13958])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#14259])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html
    - shard-tglu-1:       NOTRUN -> [SKIP][303] ([i915#14259])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#15329]) +6 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][305] ([i915#16503] / [i915#16512]) +1 other test incomplete
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][306] ([i915#16503]) +1 other test incomplete
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][307] ([i915#16512]) +1 other test incomplete
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][308] ([i915#15329]) +2 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][309] ([i915#16503] / [i915#16512]) +1 other test incomplete
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
    - shard-mtlp:         [PASS][310] -> [INCOMPLETE][311] ([i915#16503]) +2 other tests incomplete
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          [PASS][312] -> [INCOMPLETE][313] ([i915#16503]) +2 other tests incomplete
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-dg1:          [PASS][314] -> [CRASH][315] ([i915#16503]) +2 other tests crash
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [PASS][316] -> [INCOMPLETE][317] ([i915#16503]) +21 other tests incomplete
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][318] ([i915#15329]) +4 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-rkl:          [PASS][319] -> [WARN][320] ([i915#16503])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:
    - shard-glk:          [PASS][321] -> [TIMEOUT][322] ([i915#16503]) +1 other test timeout
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html
    - shard-rkl:          [PASS][323] -> [CRASH][324] ([i915#16503])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-rkl:          [PASS][325] -> [SKIP][326] ([i915#15329]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
    - shard-dg1:          [PASS][327] -> [SKIP][328] ([i915#15329]) +8 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-mtlp:         NOTRUN -> [SKIP][329] ([i915#15329] / [i915#3555] / [i915#6953])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-dg1:          [PASS][330] -> [WARN][331] ([i915#16503]) +2 other tests warn
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#12343] / [i915#5354]) +1 other test skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_pm_backlight@fade-with-suspend.html
    - shard-tglu:         NOTRUN -> [SKIP][333] ([i915#12343] / [i915#9812]) +1 other test skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-pageflip-negative:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#9685])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_pm_dc@dc5-pageflip-negative.html
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#9685])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_pm_dc@dc5-pageflip-negative.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu-1:       NOTRUN -> [SKIP][336] ([i915#3828])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][337] ([i915#15739])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu-1:       NOTRUN -> [SKIP][338] ([i915#8430])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][339] -> [SKIP][340] ([i915#15073])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][341] ([i915#4077]) +3 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#15073])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
    - shard-dg1:          [PASS][343] -> [SKIP][344] ([i915#15073])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][345] ([i915#15073])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu:         NOTRUN -> [SKIP][346] ([i915#15073]) +1 other test skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-glk:          NOTRUN -> [INCOMPLETE][347] ([i915#10553])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk1/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk10:        NOTRUN -> [SKIP][348] ([i915#11520])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][349] ([i915#11520]) +6 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
    - shard-tglu:         NOTRUN -> [SKIP][350] ([i915#11520]) +3 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][351] ([i915#11520]) +1 other test skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][352] ([i915#12316]) +1 other test skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-mtlp:         [PASS][353] -> [CRASH][354] ([i915#16503])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
    - shard-rkl:          NOTRUN -> [SKIP][355] ([i915#11520] / [i915#14544])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][356] ([i915#11520]) +5 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
    - shard-tglu-1:       NOTRUN -> [SKIP][357] ([i915#11520]) +4 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu-1:       NOTRUN -> [SKIP][358] ([i915#9683])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#9683])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][360] ([i915#9683])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-cursor-blt:
    - shard-tglu:         NOTRUN -> [SKIP][361] ([i915#9732]) +10 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_psr@fbc-pr-cursor-blt.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([i915#1072] / [i915#9732]) +7 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#1072] / [i915#14544] / [i915#9732])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr2-sprite-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][364] ([i915#9688]) +2 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_psr@fbc-psr2-sprite-plane-move.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][365] ([i915#1072] / [i915#9732]) +11 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_psr@psr-sprite-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][366] ([i915#9732]) +8 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          NOTRUN -> [INCOMPLETE][367] ([i915#15500] / [i915#16184])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][368] ([i915#12755] / [i915#15867] / [i915#5190])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          [PASS][369] -> [INCOMPLETE][370] ([i915#12276]) +1 other test incomplete
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][371] ([i915#3555]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_vrr@flip-suspend.html
    - shard-dg2:          NOTRUN -> [SKIP][372] ([i915#15243] / [i915#3555])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          NOTRUN -> [SKIP][373] ([i915#15243] / [i915#3555])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_vrr@flipline.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          NOTRUN -> [SKIP][374] ([i915#9906])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu:         NOTRUN -> [SKIP][375] ([i915#9906])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu-1:       NOTRUN -> [SKIP][376] ([i915#9906])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#2436])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-rkl:          NOTRUN -> [SKIP][378] ([i915#2436])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][379] ([i915#8516])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@perf_pmu@rc6-all-gts.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][380] ([i915#9917])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][381] ([i915#9917])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][382] ([i915#16503]) +28 other tests incomplete
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:
    - shard-glk:          NOTRUN -> [INCOMPLETE][383] ([i915#16503]) +7 other tests incomplete
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted.html

  * igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled:
    - shard-dg2:          [PASS][384] -> [TIMEOUT][385] ([i915#16503]) +4 other tests timeout
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][386] ([i915#13356] / [i915#16348]) -> [PASS][387]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg1:          [DMESG-WARN][388] ([i915#13390] / [i915#4391] / [i915#4423]) -> [PASS][389]
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@gem_eio@in-flight-suspend.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@gem_eio@in-flight-suspend.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-dg2:          [ABORT][390] ([i915#15060]) -> [PASS][391] +1 other test pass
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@i915_pm_rpm@system-suspend.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@forcewake:
    - shard-rkl:          [INCOMPLETE][392] ([i915#4817]) -> [PASS][393]
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@i915_suspend@forcewake.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@i915_suspend@forcewake.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:
    - shard-rkl:          [INCOMPLETE][394] ([i915#10056] / [i915#16503]) -> [PASS][395]
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         [TIMEOUT][396] ([i915#16503]) -> [PASS][397] +1 other test pass
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg1:          [TIMEOUT][398] ([i915#16503]) -> [PASS][399] +1 other test pass
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-dg2:          [INCOMPLETE][400] ([i915#14694] / [i915#16503]) -> [PASS][401]
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-rkl:          [INCOMPLETE][402] ([i915#16503]) -> [PASS][403] +2 other tests pass
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
    - shard-dg1:          [INCOMPLETE][404] ([i915#16503]) -> [PASS][405] +2 other tests pass
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-glk:          [TIMEOUT][406] ([i915#16503]) -> [PASS][407]
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][408] ([i915#16503]) -> [PASS][409] +1 other test pass
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb5/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb5/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][410] ([i915#13027]) -> [PASS][411] +1 other test pass
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3:
    - shard-dg2:          [FAIL][412] ([i915#14600]) -> [PASS][413] +1 other test pass
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          [TIMEOUT][414] ([i915#16503] / [i915#16517]) -> [PASS][415]
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          [TIMEOUT][416] ([i915#16503]) -> [PASS][417] +7 other tests pass
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          [TIMEOUT][418] ([i915#16503]) -> [PASS][419] +4 other tests pass
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:
    - shard-dg2:          [CRASH][420] ([i915#16503]) -> [PASS][421] +1 other test pass
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-y:
    - shard-rkl:          [SKIP][422] ([i915#15989]) -> [PASS][423] +7 other tests pass
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-tiling-y.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-tiling-y.html

  * igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite:
    - shard-glk:          [SKIP][424] -> [PASS][425] +8 other tests pass
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-mtlp:         [SKIP][426] ([i915#15725]) -> [PASS][427]
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][428] ([i915#3555] / [i915#8228]) -> [PASS][429]
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_hdr@bpc-switch.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a:
    - shard-mtlp:         [INCOMPLETE][430] ([i915#16503]) -> [PASS][431] +4 other tests pass
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [INCOMPLETE][432] ([i915#16503]) -> [PASS][433] +12 other tests pass
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg1:          [SKIP][434] ([i915#15073]) -> [PASS][435] +3 other tests pass
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [SKIP][436] ([i915#15073]) -> [PASS][437]
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][438] ([i915#4423]) -> [PASS][439]
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_pm_rpm@i2c.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][440] ([i915#15073]) -> [PASS][441]
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          [ABORT][442] ([i915#15132]) -> [PASS][443]
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-1/igt@kms_pm_rpm@system-suspend-modeset.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_pm_rpm@system-suspend-modeset.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][444] ([i915#8411]) -> [SKIP][445] ([i915#14544] / [i915#8411])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][446] ([i915#9323]) -> [SKIP][447] ([i915#14544] / [i915#9323])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          [SKIP][448] ([i915#14544] / [i915#280]) -> [SKIP][449] ([i915#280])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          [SKIP][450] ([i915#14544] / [i915#6344]) -> [SKIP][451] ([i915#6344])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-mtlp:         [SKIP][452] ([i915#3281]) -> [SKIP][453] ([i915#2575])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-rkl:          [SKIP][454] ([i915#14544] / [i915#3281]) -> [SKIP][455] ([i915#3281]) +6 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [SKIP][456] ([i915#3281]) -> [SKIP][457] ([i915#14544] / [i915#3281]) +3 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [INCOMPLETE][458] ([i915#13356]) -> [ABORT][459] ([i915#15131] / [i915#15542]) +1 other test abort
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-rkl:          [SKIP][460] ([i915#14544] / [i915#4613]) -> [SKIP][461] ([i915#4613]) +3 other tests skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_media_vme:
    - shard-rkl:          [SKIP][462] ([i915#14544] / [i915#284]) -> [SKIP][463] ([i915#284])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_media_vme.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_media_vme.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][464] ([i915#14544] / [i915#3282]) -> [SKIP][465] ([i915#3282]) +2 other tests skip
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_readwrite@new-obj:
    - shard-rkl:          [SKIP][466] ([i915#3282]) -> [SKIP][467] ([i915#14544] / [i915#3282])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_readwrite@new-obj.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_readwrite@new-obj.html

  * igt@gem_tiled_pread_basic@basic:
    - shard-rkl:          [SKIP][468] ([i915#14544] / [i915#15656]) -> [SKIP][469] ([i915#15656])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_tiled_pread_basic@basic.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_tiled_pread_basic@basic.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          [SKIP][470] ([i915#14544] / [i915#3282] / [i915#3297]) -> [SKIP][471] ([i915#3282] / [i915#3297])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-mtlp:         [SKIP][472] ([i915#3297]) -> [SKIP][473] ([i915#2575])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_userptr_blits@readonly-unsync.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#3297]) -> [SKIP][475] ([i915#3297])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          [SKIP][476] ([i915#14544] / [i915#8399]) -> [SKIP][477] ([i915#8399])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][478] ([i915#14544] / [i915#6590]) -> [SKIP][479] ([i915#6590]) +1 other test skip
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][480] ([i915#14544] / [i915#4387]) -> [SKIP][481] ([i915#4387])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          [SKIP][482] ([i915#16079]) -> [SKIP][483] ([i915#14544] / [i915#16079])
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@i915_query@query-topology-unsupported.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@i915_query@query-topology-unsupported.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          [SKIP][484] ([i915#7707]) -> [SKIP][485] ([i915#14544] / [i915#7707])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@intel_hwmon@hwmon-read.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][486] ([i915#14544] / [i915#7707]) -> [SKIP][487] ([i915#7707])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@intel_hwmon@hwmon-write.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic:
    - shard-mtlp:         [INCOMPLETE][488] ([i915#16503]) -> [TIMEOUT][489] ([i915#16503])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic:
    - shard-dg2:          [CRASH][490] ([i915#16503]) -> [INCOMPLETE][491] ([i915#16503]) +1 other test incomplete
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.html

  * igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:
    - shard-mtlp:         [TIMEOUT][492] ([i915#16503]) -> [INCOMPLETE][493] ([i915#16503])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:
    - shard-rkl:          [INCOMPLETE][494] ([i915#16503]) -> [TIMEOUT][495] ([i915#16503])
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][496] ([i915#14544] / [i915#5286]) -> [SKIP][497] ([i915#5286]) +1 other test skip
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          [SKIP][498] ([i915#5286]) -> [SKIP][499] ([i915#14544] / [i915#5286]) +1 other test skip
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][500] ([i915#3638]) -> [SKIP][501] ([i915#14544] / [i915#3638])
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][502] ([i915#14544] / [i915#3638]) -> [SKIP][503] ([i915#3638])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          [INCOMPLETE][504] ([i915#16503]) -> [SKIP][505] ([i915#4538] / [i915#5190]) +1 other test skip
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][506] ([i915#4538] / [i915#5190]) -> [INCOMPLETE][507] ([i915#16503]) +2 other tests incomplete
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg2:          [SKIP][508] ([i915#4538] / [i915#5190]) -> [TIMEOUT][509] ([i915#16503])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [INCOMPLETE][510] ([i915#16503]) -> [SKIP][511] +2 other tests skip
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][512] ([i915#10307] / [i915#6095]) -> [TIMEOUT][513] ([i915#16503]) +2 other tests timeout
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg1:          [TIMEOUT][514] ([i915#16503]) -> [SKIP][515] ([i915#12313])
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
    - shard-dg2:          [TIMEOUT][516] ([i915#16503]) -> [SKIP][517] ([i915#12313])
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-mtlp:         [TIMEOUT][518] ([i915#16503]) -> [SKIP][519] ([i915#6095]) +3 other tests skip
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][520] ([i915#12313] / [i915#14544]) -> [SKIP][521] ([i915#12313])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
    - shard-dg1:          [SKIP][522] ([i915#12313]) -> [TIMEOUT][523] ([i915#16503])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [TIMEOUT][524] ([i915#16503]) -> [CRASH][525] ([i915#16503])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:
    - shard-rkl:          [SKIP][526] ([i915#14098] / [i915#6095]) -> [SKIP][527] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][528] ([i915#6095]) -> [SKIP][529] ([i915#14544] / [i915#6095]) +2 other tests skip
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [SKIP][530] ([i915#10307] / [i915#6095]) -> [INCOMPLETE][531] ([i915#16503])
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:
    - shard-dg1:          [INCOMPLETE][532] ([i915#16503]) -> [TIMEOUT][533] ([i915#16503]) +10 other tests timeout
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][534] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][535] ([i915#14098] / [i915#6095]) +13 other tests skip
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-glk:          [INCOMPLETE][536] ([i915#15582]) -> [INCOMPLETE][537] ([i915#14694] / [i915#15582]) +1 other test incomplete
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [SKIP][538] ([i915#6095]) -> [INCOMPLETE][539] ([i915#16503])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [TIMEOUT][540] ([i915#16503]) -> [CRASH][541] ([i915#16503])
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         [SKIP][542] ([i915#6095]) -> [TIMEOUT][543] ([i915#16503]) +1 other test timeout
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][544] ([i915#14544] / [i915#6095]) -> [SKIP][545] ([i915#6095]) +12 other tests skip
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          [TIMEOUT][546] ([i915#16503]) -> [SKIP][547] ([i915#10307] / [i915#6095]) +1 other test skip
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [CRASH][548] ([i915#16503]) -> [TIMEOUT][549] ([i915#16503])
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [INCOMPLETE][550] ([i915#16503]) -> [SKIP][551] ([i915#10307] / [i915#6095])
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][552] ([i915#12313]) -> [SKIP][553] ([i915#12313] / [i915#14544])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_color_pipeline@plane-lut3d-green-only:
    - shard-rkl:          [SKIP][554] ([i915#14544] / [i915#16471]) -> [SKIP][555] ([i915#16471])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-rkl:          [SKIP][556] ([i915#11151] / [i915#7828]) -> [SKIP][557] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-rkl:          [SKIP][558] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][559] ([i915#11151] / [i915#7828]) +4 other tests skip
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][560] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][561] ([i915#15330] / [i915#3116])
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][562] ([i915#15330] / [i915#3116]) -> [SKIP][563] ([i915#14544] / [i915#15330] / [i915#3116])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-rkl:          [SKIP][564] ([i915#14544] / [i915#15330]) -> [SKIP][565] ([i915#15330])
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [FAIL][566] ([i915#7173]) -> [SKIP][567] ([i915#15865])
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_content_protection@legacy.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][568] ([i915#15865]) -> [SKIP][569] ([i915#14544] / [i915#15865])
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_content_protection@mei-interface.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][570] ([i915#13049]) -> [SKIP][571] ([i915#13049] / [i915#14544])
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][572] ([i915#13049] / [i915#3359]) -> [SKIP][573] ([i915#13049])
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][574] ([i915#14544] / [i915#3555]) -> [SKIP][575] ([i915#3555]) +5 other tests skip
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][576] ([i915#14544]) -> [SKIP][577] +38 other tests skip
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-rkl:          [INCOMPLETE][578] ([i915#10056] / [i915#16503]) -> [SKIP][579]
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-dg1:          [SKIP][580] -> [INCOMPLETE][581] ([i915#16503]) +6 other tests incomplete
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][582] ([i915#14544] / [i915#4103]) -> [INCOMPLETE][583] ([i915#16503])
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][584] ([i915#4103]) -> [SKIP][585] ([i915#14544] / [i915#4103])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][586] ([i915#14544] / [i915#9723]) -> [SKIP][587] ([i915#9723])
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][588] ([i915#13748] / [i915#14544]) -> [SKIP][589] ([i915#13748])
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          [SKIP][590] ([i915#13707]) -> [SKIP][591] ([i915#13707] / [i915#14544])
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc-ultrajoiner:
    - shard-rkl:          [SKIP][592] ([i915#16361]) -> [SKIP][593] ([i915#14544] / [i915#16361]) +1 other test skip
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc-ultrajoiner.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc-ultrajoiner.html

  * igt@kms_dsc@dsc-with-output-formats-ultrajoiner:
    - shard-rkl:          [SKIP][594] ([i915#14544] / [i915#16361]) -> [SKIP][595] ([i915#16361]) +1 other test skip
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][596] ([i915#14544] / [i915#658]) -> [SKIP][597] ([i915#658])
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_feature_discovery@psr2.html
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-rkl:          [SKIP][598] ([i915#9934]) -> [SKIP][599] ([i915#14544] / [i915#9934]) +1 other test skip
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_flip@2x-absolute-wf_vblank.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-dg1:          [INCOMPLETE][600] ([i915#16503]) -> [SKIP][601] ([i915#9934])
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          [INCOMPLETE][602] ([i915#12314] / [i915#16503]) -> [SKIP][603] ([i915#9934])
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-rkl:          [SKIP][604] ([i915#14544] / [i915#9934]) -> [SKIP][605] ([i915#9934]) +2 other tests skip
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          [SKIP][606] ([i915#9934]) -> [INCOMPLETE][607] ([i915#12314] / [i915#16503]) +1 other test incomplete
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible:
    - shard-dg2:          [CRASH][608] ([i915#16503]) -> [TIMEOUT][609] ([i915#16503] / [i915#16517])
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html
    - shard-mtlp:         [WARN][610] ([i915#16503]) -> [INCOMPLETE][611] ([i915#16472] / [i915#16503])
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          [INCOMPLETE][612] ([i915#16503] / [i915#6113]) -> [INCOMPLETE][613] ([i915#12314] / [i915#16503] / [i915#6113])
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
    - shard-dg1:          [INCOMPLETE][614] ([i915#16503] / [i915#6113]) -> [TIMEOUT][615] ([i915#16503])
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
    - shard-tglu:         [INCOMPLETE][616] ([i915#12314] / [i915#16503] / [i915#16509]) -> [INCOMPLETE][617] ([i915#16503] / [i915#16509]) +3 other tests incomplete
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-mtlp:         [INCOMPLETE][618] ([i915#16472] / [i915#16503] / [i915#6113]) -> [WARN][619] ([i915#16503])
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
    - shard-mtlp:         [INCOMPLETE][620] ([i915#16500] / [i915#16503]) -> [SKIP][621] ([i915#2575])
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-mtlp:         [SKIP][622] ([i915#3555] / [i915#8810] / [i915#8813]) -> [INCOMPLETE][623] ([i915#16500] / [i915#16503])
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [INCOMPLETE][624] ([i915#16503]) -> [SKIP][625] ([i915#15643] / [i915#5190])
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][626] ([i915#15643] / [i915#5190]) -> [INCOMPLETE][627] ([i915#16503])
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg1:          [TIMEOUT][628] ([i915#16503]) -> [INCOMPLETE][629] ([i915#16503]) +3 other tests incomplete
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-glk:          [SKIP][630] -> [INCOMPLETE][631] ([i915#16503])
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
    - shard-rkl:          [SKIP][632] ([i915#15643]) -> [SKIP][633] ([i915#14544] / [i915#15643])
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][634] ([i915#14544] / [i915#15643]) -> [SKIP][635] ([i915#15643]) +3 other tests skip
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:
    - shard-glk:          [INCOMPLETE][636] ([i915#16503]) -> [SKIP][637]
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          [INCOMPLETE][638] ([i915#16503]) -> [SKIP][639] ([i915#15643])
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][640] ([i915#15104] / [i915#15990]) -> [INCOMPLETE][641] ([i915#16503]) +1 other test incomplete
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [INCOMPLETE][642] ([i915#16503]) -> [SKIP][643] ([i915#15989]) +1 other test skip
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][644] ([i915#15989]) -> [CRASH][645] ([i915#16503])
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][646] ([i915#15989]) -> [INCOMPLETE][647] ([i915#16503]) +3 other tests incomplete
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-render.html
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [INCOMPLETE][648] ([i915#16503]) -> [SKIP][649] ([i915#15989]) +2 other tests skip
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-render:
    - shard-dg1:          [SKIP][650] ([i915#15989]) -> [INCOMPLETE][651] ([i915#16503])
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-render.html
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [TIMEOUT][652] ([i915#16503]) -> [SKIP][653] +3 other tests skip
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][654] ([i915#15990]) -> [INCOMPLETE][655] ([i915#16503]) +2 other tests incomplete
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html
    - shard-dg1:          [INCOMPLETE][656] ([i915#16503]) -> [SKIP][657] ([i915#15990]) +9 other tests skip
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          [INCOMPLETE][658] ([i915#16503]) -> [SKIP][659] ([i915#15989]) +1 other test skip
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][660] ([i915#15989]) -> [INCOMPLETE][661] ([i915#16503]) +5 other tests incomplete
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-rte:
    - shard-rkl:          [SKIP][662] -> [SKIP][663] ([i915#14544]) +21 other tests skip
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-rte.html
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [INCOMPLETE][664] ([i915#16503]) -> [SKIP][665] +7 other tests skip
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg2:          [SKIP][666] ([i915#15991]) -> [INCOMPLETE][667] ([i915#16503]) +2 other tests incomplete
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-glk:          [SKIP][668] -> [TIMEOUT][669] ([i915#16503]) +4 other tests timeout
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk1/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [INCOMPLETE][670] ([i915#16503]) -> [SKIP][671] ([i915#15104] / [i915#15990])
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][672] ([i915#15990] / [i915#8708]) -> [INCOMPLETE][673] ([i915#16503])
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [CRASH][674] ([i915#16503]) -> [SKIP][675]
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][676] ([i915#15102]) -> [INCOMPLETE][677] ([i915#16503]) +3 other tests incomplete
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][678] ([i915#15990] / [i915#8708]) -> [INCOMPLETE][679] ([i915#16503]) +4 other tests incomplete
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [679]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [INCOMPLETE][680] ([i915#16503]) -> [SKIP][681] ([i915#15102]) +2 other tests skip
   [680]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [681]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][682] ([i915#15102] / [i915#3023]) -> [INCOMPLETE][683] ([i915#16503]) +1 other test incomplete
   [682]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [683]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          [INCOMPLETE][684] ([i915#16503]) -> [SKIP][685] ([i915#15990] / [i915#8708]) +1 other test skip
   [684]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [685]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [INCOMPLETE][686] ([i915#16503]) -> [SKIP][687] ([i915#1825])
   [686]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [687]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][688] ([i915#15991] / [i915#5354]) -> [INCOMPLETE][689] ([i915#16503])
   [688]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
   [689]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][690] ([i915#1825]) -> [INCOMPLETE][691] ([i915#16503])
   [690]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
   [691]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
    - shard-dg1:          [INCOMPLETE][692] ([i915#16503]) -> [SKIP][693] +5 other tests skip
   [692]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html
   [693]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][694] ([i915#14544] / [i915#1825]) -> [SKIP][695] ([i915#1825]) +3 other tests skip
   [694]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [695]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-rkl:          [SKIP][696] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][697] ([i915#15102] / [i915#3023]) +6 other tests skip
   [696]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [697]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:
    - shard-dg1:          [CRASH][698] ([i915#16503]) -> [INCOMPLETE][699] ([i915#16503]) +1 other test incomplete
   [698]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
   [699]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][700] ([i915#15102]) -> [INCOMPLETE][701] ([i915#16503]) +7 other tests incomplete
   [700]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
   [701]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [INCOMPLETE][702] ([i915#16503]) -> [SKIP][703] ([i915#15102]) +7 other tests skip
   [702]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [703]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][704] ([i915#15102]) -> [INCOMPLETE][705] ([i915#16503]) +5 other tests incomplete
   [704]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-blt.html
   [705]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [CRASH][706] ([i915#16503]) -> [SKIP][707] ([i915#15102]) +3 other tests skip
   [706]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html
   [707]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         [SKIP][708] ([i915#15102]) -> [INCOMPLETE][709] ([i915#16503]) +3 other tests incomplete
   [708]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [709]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg1:          [CRASH][710] ([i915#16503]) -> [SKIP][711] ([i915#15102])
   [710]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html
   [711]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte:
    - shard-rkl:          [SKIP][712] ([i915#15102]) -> [SKIP][713] ([i915#14544] / [i915#15102]) +6 other tests skip
   [712]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html
   [713]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][714] ([i915#15990]) -> [INCOMPLETE][715] ([i915#16503]) +16 other tests incomplete
   [714]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [715]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render:
    - shard-dg2:          [SKIP][716] ([i915#15991]) -> [CRASH][717] ([i915#16503])
   [716]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html
   [717]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][718] -> [INCOMPLETE][719] ([i915#16503]) +16 other tests incomplete
   [718]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [719]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [INCOMPLETE][720] ([i915#16503]) -> [SKIP][721] ([i915#15991]) +2 other tests skip
   [720]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
   [721]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][722] ([i915#10433] / [i915#15102]) -> [SKIP][723] ([i915#15102]) +5 other tests skip
   [722]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [723]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][724] ([i915#15102]) -> [SKIP][725] ([i915#10433] / [i915#15102]) +1 other test skip
   [724]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [725]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][726] ([i915#15102] / [i915#3023]) -> [SKIP][727] ([i915#14544] / [i915#15102] / [i915#3023]) +6 other tests skip
   [726]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [727]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         [SKIP][728] ([i915#15991] / [i915#1825]) -> [SKIP][729] ([i915#2575]) +3 other tests skip
   [728]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [729]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [INCOMPLETE][730] ([i915#16503]) -> [SKIP][731] ([i915#15990]) +2 other tests skip
   [730]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
   [731]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-pwrite:
    - shard-dg1:          [INCOMPLETE][732] ([i915#16503]) -> [CRASH][733] ([i915#16503]) +6 other tests crash
   [732]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-pwrite.html
   [733]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render:
    - shard-dg1:          [INCOMPLETE][734] ([i915#16503]) -> [SKIP][735] ([i915#15102]) +5 other tests skip
   [734]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render.html
   [735]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][736] ([i915#14544] / [i915#15102]) -> [SKIP][737] ([i915#15102]) +7 other tests skip
   [736]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html
   [737]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglu:         [INCOMPLETE][738] ([i915#16503]) -> [SKIP][739] ([i915#15102])
   [738]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-4/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [739]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][740] ([i915#15990]) -> [CRASH][741] ([i915#16503])
   [740]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [741]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
    - shard-tglu:         [SKIP][742] -> [INCOMPLETE][743] ([i915#16503]) +3 other tests incomplete
   [742]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-3/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [743]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-10/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [INCOMPLETE][744] ([i915#15436]) -> [SKIP][745] ([i915#3555] / [i915#8228])
   [744]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
   [745]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][746] ([i915#15459]) -> [SKIP][747] ([i915#14544] / [i915#15459])
   [746]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html
   [747]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-dg2:          [INCOMPLETE][748] ([i915#13026] / [i915#16503]) -> [TIMEOUT][749] ([i915#16503])
   [748]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html
   [749]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
    - shard-dg1:          [INCOMPLETE][750] ([i915#13026] / [i915#16503]) -> [SKIP][751] ([i915#15709]) +2 other tests skip
   [750]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
   [751]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
    - shard-dg2:          [INCOMPLETE][752] ([i915#13026] / [i915#16503]) -> [SKIP][753] ([i915#15709])
   [752]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
   [753]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-linear-modifier-source-clamping:
    - shard-dg1:          [INCOMPLETE][754] ([i915#13026] / [i915#16503]) -> [TIMEOUT][755] ([i915#16503])
   [754]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html
   [755]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping:
    - shard-mtlp:         [CRASH][756] ([i915#16503]) -> [INCOMPLETE][757] ([i915#13026] / [i915#16503])
   [756]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html
   [757]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:
    - shard-dg1:          [INCOMPLETE][758] ([i915#13026] / [i915#16503] / [i915#4423]) -> [SKIP][759] ([i915#15709])
   [758]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html
   [759]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier:
    - shard-dg1:          [TIMEOUT][760] ([i915#16503]) -> [INCOMPLETE][761] ([i915#13026] / [i915#16503])
   [760]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html
   [761]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html
    - shard-rkl:          [INCOMPLETE][762] ([i915#16503]) -> [CRASH][763] ([i915#16503])
   [762]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html
   [763]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
    - shard-rkl:          [SKIP][764] ([i915#14544] / [i915#15709]) -> [SKIP][765] ([i915#15709]) +1 other test skip
   [764]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
   [765]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
    - shard-dg2:          [SKIP][766] ([i915#15709]) -> [INCOMPLETE][767] ([i915#13026] / [i915#16503])
   [766]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html
   [767]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          [SKIP][768] ([i915#13958]) -> [SKIP][769] ([i915#13958] / [i915#14544])
   [768]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html
   [769]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-mtlp:         [INCOMPLETE][770] ([i915#16503]) -> [SKIP][771] ([i915#15329]) +1 other test skip
   [770]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html
   [771]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:
    - shard-dg1:          [SKIP][772] ([i915#15329]) -> [INCOMPLETE][773] ([i915#16503]) +1 other test incomplete
   [772]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html
   [773]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-dg1:          [INCOMPLETE][774] ([i915#16503]) -> [SKIP][775] ([i915#15329]) +1 other test skip
   [774]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
   [775]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-rkl:          [SKIP][776] ([i915#14544] / [i915#15329]) -> [INCOMPLETE][777] ([i915#16503])
   [776]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [777]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][778] ([i915#14544] / [i915#15329] / [i915#3555]) -> [INCOMPLETE][779] ([i915#16503])
   [778]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [779]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
    - shard-dg1:          [SKIP][780] ([i915#15329] / [i915#3555]) -> [WARN][781] ([i915#16503])
   [780]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [781]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
    - shard-dg1:          [SKIP][782] ([i915#15329]) -> [CRASH][783] ([i915#16503])
   [782]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
   [783]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][784] ([i915#12343] / [i915#14544] / [i915#5354]) -> [SKIP][785] ([i915#12343] / [i915#5354])
   [784]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
   [785]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          [SKIP][786] ([i915#14544] / [i915#3828]) -> [SKIP][787] ([i915#3828]) +1 other test skip
   [786]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
   [787]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][788] ([i915#14544] / [i915#15739]) -> [SKIP][789] ([i915#15739])
   [788]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [789]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-dg1:          [SKIP][790] ([i915#11520] / [i915#4423]) -> [SKIP][791] ([i915#11520])
   [790]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
   [791]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-rkl:          [SKIP][792] ([i915#11520]) -> [SKIP][793] ([i915#11520] / [i915#14544]) +2 other tests skip
   [792]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html
   [793]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-mtlp:         [SKIP][794] ([i915#12316]) -> [INCOMPLETE][795] ([i915#16503])
   [794]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
   [795]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         [SKIP][796] ([i915#9808]) -> [INCOMPLETE][797] ([i915#16503])
   [796]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html
   [797]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][798] ([i915#11520] / [i915#14544]) -> [SKIP][799] ([i915#11520]) +4 other tests skip
   [798]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
   [799]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr@fbc-pr-basic:
    - shard-dg1:          [SKIP][800] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][801] ([i915#1072] / [i915#9732])
   [800]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_psr@fbc-pr-basic.html
   [801]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_psr@fbc-pr-basic.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][802] ([i915#1072] / [i915#9732]) -> [SKIP][803] ([i915#1072] / [i915#14544] / [i915#9732]) +7 other tests skip
   [802]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html
   [803]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          [SKIP][804] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][805] ([i915#1072] / [i915#9732]) +10 other tests skip
   [804]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
   [805]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          [SKIP][806] ([i915#15867]) -> [SKIP][807] ([i915#12755] / [i915#15867])
   [806]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-90.html
   [807]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][808] ([i915#15867] / [i915#5190]) -> [SKIP][809] ([i915#12755] / [i915#15867] / [i915#5190])
   [808]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [809]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_vrr@flip-basic:
    - shard-rkl:          [SKIP][810] ([i915#15243] / [i915#3555]) -> [SKIP][811] ([i915#14544] / [i915#15243] / [i915#3555])
   [810]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_vrr@flip-basic.html
   [811]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          [SKIP][812] ([i915#9906]) -> [SKIP][813] ([i915#14544] / [i915#9906])
   [812]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_vrr@max-min.html
   [813]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][814] ([i915#14544] / [i915#9906]) -> [SKIP][815] ([i915#9906]) +1 other test skip
   [814]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
   [815]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][816] ([i915#14544] / [i915#8516]) -> [SKIP][817] ([i915#8516])
   [816]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
   [817]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][818] ([i915#9917]) -> [SKIP][819] ([i915#14544] / [i915#9917])
   [818]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [819]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:
    - shard-dg2:          [INCOMPLETE][820] ([i915#16503]) -> [TIMEOUT][821] ([i915#16503]) +5 other tests timeout
   [820]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted.html
   [821]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - shard-dg2:          [TIMEOUT][822] ([i915#16503]) -> [INCOMPLETE][823] ([i915#16503]) +10 other tests incomplete
   [822]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html
   [823]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html

  
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14694]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
  [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15542]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15542
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
  [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
  [i915#15871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#16021]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16021
  [i915#16079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079
  [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
  [i915#16084]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16084
  [i915#16090]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16090
  [i915#16109]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109
  [i915#16112]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112
  [i915#16162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16162
  [i915#16168]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16168
  [i915#16184]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184
  [i915#16348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348
  [i915#16349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16349
  [i915#16361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361
  [i915#16386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386
  [i915#16411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16411
  [i915#16471]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471
  [i915#16472]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16472
  [i915#16500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16500
  [i915#16503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503
  [i915#16509]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509
  [i915#16510]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510
  [i915#16512]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512
  [i915#16513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16513
  [i915#16516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16516
  [i915#16517]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16517
  [i915#16518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16518
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3710]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3710
  [i915#3711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3711
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18724 -> Patchwork_168786v2

  CI-20190529: 20190529
  CI_DRM_18724: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8987: 8987
  Patchwork_168786v2: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/index.html

--===============6987070694753976237==
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
<tr><td><b>Series:</b></td><td>gpu/buddy: bail out of try_harder when alignment cannot be honoured (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/168786/">https://patchwork.freedesktop.org/series/168786/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18724_full -&gt; Patchwork_168786v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_168786v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_168786v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_168786v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@core_hotunplug@unbind-rebind.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">FAIL</a> +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_cmdline_parser:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_selftest@drm_cmdline_parser.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_selftest@drm_cmdline_parser.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_mmap_gtt@big-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_chamelium_hpd@dp-hpd.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_content_protection@atomic-dpms-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_content_protection@atomic-dpms-hdcp14.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-512x512.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-basic:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_psr@fbc-pr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_psr@fbc-pr-basic.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18724_full and Patchwork_168786v2_full:</p>
<h3>New IGT tests (35)</h3>
<ul>
<li>
<p>igt@gem_mmap_offset:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@basic-cpu-gtt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@big-bo-tiledx:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@constant-alpha-mid:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@drm_plane_helper:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@fbchdr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@fbcpsr-stridechange:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@force-connector-state:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@hdr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@hdr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@i915-ref-count:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@invalid-bad-flags:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@invalid-bsd2-flag-on-vebox:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@invalid-ctx:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@lease-invalid-connector:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@legacy-resubmit-new:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@load:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@read:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@reset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@sync_multi_consumer_producer:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@syncobj-timeline-signal:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@unused-offsets:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-alpha-transparent@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-alpha-transparent@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.39] s</li>
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
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_168786v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk11/igt@drm_buddy@drm_buddy.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348">i915#16348</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363">i915#13363</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_fence@submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3711">i915#3711</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_flush@basic-uc-rw-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_exec_flush@basic-uc-rw-default.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@larger-than-life-batch:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_params@larger-than-life-batch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_exec_params@larger-than-life-batch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16090">i915#16090</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3710">i915#3710</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_exec_params@secure-non-master.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_reloc@basic-range.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk11/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196">i915#13196</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset (NEW):</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb4/igt@gem_mmap_offset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16411">i915#16411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16021">i915#16021</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16168">i915#16168</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16349">i915#16349</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@gem_tiled_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@gen9_exec_parse@allowed-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@i915_drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123">i915#14123</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@i915_drm_fdinfo@virtual-busy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@reg-read-ioctl:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@i915_pm_rpm@reg-read-ioctl.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@i915_pm_rpm@reg-read-ioctl.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk5/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172">i915#15172</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb4/igt@i915_pm_rps@reset.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16162">i915#16162</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-4/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-2/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@i915_suspend@fence-restore-tiled2untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events-linear.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +10 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16516">i915#16516</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871">i915#15871</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +88 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +139 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +10 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510">i915#16510</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510">i915#16510</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +7 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510">i915#16510</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +16 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +45 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color_pipeline@plane-lut3d-green-only:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_chamelium_hpd@vga-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_content_protection@legacy-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_content_protection@uevent-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_content_protection@uevent-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic-bigjoiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_dsc@dsc-basic-bigjoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-bigjoiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_dsc@dsc-fractional-bpp-bigjoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-bigjoiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-bigjoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16084">i915#16084</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_flip@2x-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-hdmi-a3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16517">i915#16517</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509">i915#16509</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a2.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +8 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> +48 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbchdr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +288 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsrhdr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk11/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_frontbuffer_tracking@hdr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +31 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +20 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-4k:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_hdmi_inject@inject-4k.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725">i915#15725</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16518">i915#16518</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871">i915#15871</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping@pipe-a-plane-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping@pipe-a-plane-0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16513">i915#16513</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386">i915#16386</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-a-plane-5:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-a-plane-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386">i915#16386</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16513">i915#16513</a>)</li>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112">i915#16112</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512">i915#16512</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512">i915#16512</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512">i915#16512</a>) +1 other test incomplete</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests crash</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +21 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +1 other test skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-pageflip-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_pm_dc@dc5-pageflip-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_pm_dc@dc5-pageflip-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk1/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_psr@fbc-pr-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr@fbc-psr2-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_psr@fbc-psr2-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184">i915#16184</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@kms_vrr@flipline.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-9/igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +28 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk4/igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +7 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests timeout</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348">i915#16348</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@i915_pm_rpm@system-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060">i915#15060</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@i915_pm_rpm@system-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694">i915#14694</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a> +2 other tests pass</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb5/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb5/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i915#14600</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16517">i915#16517</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-tiling-y.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725">i915#15725</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-1/igt@kms_pm_rpm@system-suspend-modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-2/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@gem_exec_suspend@basic-s3.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15542">i915#15542</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_readwrite@new-obj.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@gem_readwrite@new-obj.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic@basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656">i915#15656</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656">i915#15656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079">i915#16079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079">i915#16079</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_async_flips@async-flip-with-page-flip-events-linear-atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +10 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694">i915#14694</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color_pipeline@plane-lut3d-green-only:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_content_protection@legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +6 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc-ultrajoiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-ultrajoiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-5/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16517">i915#16517</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16472">i915#16472</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509">i915#16509</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509">i915#16509</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16472">i915#16472</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16500">i915#16500</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16500">i915#16500</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-rte.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk1/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +7 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-blt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +16 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +16 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-pwrite.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-pwrite.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +6 other tests crash</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-4/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-3/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-tglu-10/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436">i915#15436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-7/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-19/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-linear-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-16/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-basic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_psr@fbc-pr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg1-12/igt@kms_psr@fbc-pr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-3/igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168786v2/shard-dg2-8/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +10 other tests incomplete</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18724 -&gt; Patchwork_168786v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18724: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8987: 8987<br />
  Patchwork_168786v2: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6987070694753976237==--
