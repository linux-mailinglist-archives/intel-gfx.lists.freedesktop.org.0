Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77939542971
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 10:30:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAF0910ED27;
	Wed,  8 Jun 2022 08:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F5DD10ED27;
 Wed,  8 Jun 2022 08:30:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08A0AA00A0;
 Wed,  8 Jun 2022 08:30:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 08 Jun 2022 08:30:36 -0000
Message-ID: <165467703600.15584.15158791472659712509@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1654674560.git.jani.nikula@intel.com>
In-Reply-To: <cover.1654674560.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_expand_on_struct_drm=5Fedid_usage_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/edid: expand on struct drm_edid usage (rev3)
URL   : https://patchwork.freedesktop.org/series/104309/
State : warning

== Summary ==

Error: dim checkpatch failed
cbd046eb3347 drm/edid: fix CTA data block collection size for CTA version 3
57c0da5db445 drm/edid: abstract cea data block collection size
8a18cc54c495 drm/edid: add block count and data helper functions for drm_edid
339317982780 drm/edid: keep track of alloc size in drm_do_get_edid()
20f7e6373c64 drm/edid: add new interfaces around struct drm_edid
-:320: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#320: FILE: include/drm/drm_edid.h:604:
+					    int (*read_block)(void *context, u8 *buf, unsigned int block, size_t len),

total: 0 errors, 1 warnings, 0 checks, 291 lines checked
7bb7d4b16112 drm/edid: add drm_edid_connector_update()
923ccd9981fa drm/probe-helper: abstract .get_modes() connector helper call
05977fe383c7 drm/probe-helper: add drm_connector_helper_get_modes()
-:44: WARNING:TYPO_SPELLING: 'succesfully' may be misspelled - perhaps 'successfully'?
#44: FILE: drivers/gpu/drm/drm_probe_helper.c:1075:
+	 * succesfully, fill in the connector information derived from the
 	   ^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
b6e91df12a6b drm/edid: add drm_edid_raw() to access the raw EDID data
e76cd9721c85 drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
-:260: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "drm_edid"
#260: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2429:
+	intel_hdmi_dp_dual_mode_detect(connector, drm_edid != NULL);

total: 0 errors, 0 warnings, 1 checks, 308 lines checked
65d8f4dc11db drm/i915/bios: convert intel_bios_init_panel() to drm_edid
e789e7b1cbc0 drm/edid: do invalid block filtering in-place
bfe12401468e drm/edid: add HF-EEODB support to EDID read and allocation
60e4c8b9d502 drm/edid: take HF-EEODB extension count into account
6707dfd9931f drm/todo: add entry for converting the subsystem to struct drm_edid


