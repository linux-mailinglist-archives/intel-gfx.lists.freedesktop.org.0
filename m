Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BEC129ABF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 21:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814356E439;
	Mon, 23 Dec 2019 20:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A50746E439;
 Mon, 23 Dec 2019 20:14:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B1C2A0099;
 Mon, 23 Dec 2019 20:14:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 23 Dec 2019 20:14:09 -0000
Message-ID: <157713204947.16935.11708845086418120159@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
In-Reply-To: <20191223195850.25997-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_RFC=3A_display/ddi=3A_keep_register_indexes_in_a_table?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: RFC: display/ddi: keep register indexes in a table
URL   : https://patchwork.freedesktop.org/series/71330/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f9993b30fcc2 drm/i915/display: nuke skl workaround for pre-production hw
4ed40d08b95f drm/i915/display: remove alias to dig_port
ea2ec826034a drm/i915/display: prefer the more common dig_port name
7a1e8b409ea0 drm/i915/display: start description-based ddi initialization
409c886b29d7 drm/i915/display: move icl to description-based ddi init
ac1ca5913330 drm/i915/display: description-based initialization for remaining ddi platforms
f385d919929d drm/i915/display: add phy, vbt and ddi indexes
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
on to the other.  Right now we already cover part of this by creating kind of

-:49: WARNING:LONG_LINE: line over 100 characters
#49: FILE: drivers/gpu/drm/i915/display/intel_display.c:16381:
+		{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },

-:50: WARNING:LONG_LINE: line over 100 characters
#50: FILE: drivers/gpu/drm/i915/display/intel_display.c:16382:
+		{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },

-:51: WARNING:LONG_LINE: line over 100 characters
#51: FILE: drivers/gpu/drm/i915/display/intel_display.c:16383:
+		{ .name = "DDI TC1", .port = PORT_D, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x2, },

-:52: WARNING:LONG_LINE: line over 100 characters
#52: FILE: drivers/gpu/drm/i915/display/intel_display.c:16384:
+		{ .name = "DDI TC2", .port = PORT_E, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x4, .phy_idx = 0x1, .vbt_idx = 0x3, },

-:53: WARNING:LONG_LINE: line over 100 characters
#53: FILE: drivers/gpu/drm/i915/display/intel_display.c:16385:
+		{ .name = "DDI TC3", .port = PORT_F, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x5, .phy_idx = 0x2, .vbt_idx = 0x4, },

-:54: WARNING:LONG_LINE: line over 100 characters
#54: FILE: drivers/gpu/drm/i915/display/intel_display.c:16386:
+		{ .name = "DDI TC4", .port = PORT_G, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x6, .phy_idx = 0x3, .vbt_idx = 0x5, },

-:55: WARNING:LONG_LINE: line over 100 characters
#55: FILE: drivers/gpu/drm/i915/display/intel_display.c:16387:
+		{ .name = "DDI TC5", .port = PORT_H, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x7, .phy_idx = 0x4, .vbt_idx = 0x6, },

-:56: WARNING:LONG_LINE: line over 100 characters
#56: FILE: drivers/gpu/drm/i915/display/intel_display.c:16388:
+		{ .name = "DDI TC6", .port = PORT_I, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x8, .phy_idx = 0x5, .vbt_idx = 0x7, },

-:70: WARNING:LONG_LINE: line over 100 characters
#70: FILE: drivers/gpu/drm/i915/display/intel_display.c:16397:
+		{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },

-:71: WARNING:LONG_LINE: line over 100 characters
#71: FILE: drivers/gpu/drm/i915/display/intel_display.c:16398:
+		{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },

-:72: WARNING:LONG_LINE: line over 100 characters
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:16399:
+		{ .name = "DDI TC1", .port = PORT_C, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x2, .phy_idx = 0x0, .vbt_idx = 0x2, },

-:73: WARNING:LONG_LINE: line over 100 characters
#73: FILE: drivers/gpu/drm/i915/display/intel_display.c:16400:
+		{ .name = "DDI TC2", .port = PORT_D, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x3, .phy_idx = 0x1, .vbt_idx = 0x3, },

-:74: WARNING:LONG_LINE: line over 100 characters
#74: FILE: drivers/gpu/drm/i915/display/intel_display.c:16401:
+		{ .name = "DDI TC3", .port = PORT_E, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x4, .phy_idx = 0x2, .vbt_idx = 0x4, },

-:75: WARNING:LONG_LINE: line over 100 characters
#75: FILE: drivers/gpu/drm/i915/display/intel_display.c:16402:
+		{ .name = "DDI TC4", .port = PORT_F, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x5, .phy_idx = 0x3, .vbt_idx = 0x5, },

-:87: WARNING:LONG_LINE: line over 100 characters
#87: FILE: drivers/gpu/drm/i915/display/intel_display.c:16410:
+		{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },

-:88: WARNING:LONG_LINE: line over 100 characters
#88: FILE: drivers/gpu/drm/i915/display/intel_display.c:16411:
+		{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },

-:89: WARNING:LONG_LINE: line over 100 characters
#89: FILE: drivers/gpu/drm/i915/display/intel_display.c:16412:
+		{ .name = "DDI C",   .port = PORT_C, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2, },

-:90: WARNING:LONG_LINE: line over 100 characters
#90: FILE: drivers/gpu/drm/i915/display/intel_display.c:16413:
+		{ .name = "DDI D",   .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x3, },

total: 0 errors, 19 warnings, 0 checks, 109 lines checked
f6feacf14aa5 drm/i915/display: refer to vbt info as vbt_port_info
910cfe50bff9 drm/i915/display: use port_info on intel_ddi_init
-:135: CHECK:LINE_SPACING: Please don't use multiple blank lines
#135: FILE: drivers/gpu/drm/i915/display/intel_ddi.h:55:
 
+

total: 0 errors, 0 warnings, 1 checks, 128 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
