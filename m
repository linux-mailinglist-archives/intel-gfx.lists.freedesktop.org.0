Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C566820B0CF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 13:47:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ECD26EC76;
	Fri, 26 Jun 2020 11:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4B566EC83;
 Fri, 26 Jun 2020 11:46:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCF9EA47E6;
 Fri, 26 Jun 2020 11:46:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 26 Jun 2020 11:46:57 -0000
Message-ID: <159317201774.22985.5575110009824454623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
In-Reply-To: <20200625001120.22810-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_display/ddi=3A_keep_register_indexes_in_a_table?=
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

Series: display/ddi: keep register indexes in a table
URL   : https://patchwork.freedesktop.org/series/78806/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1c318e3abcdc drm/i915: move ICL port F hack to intel_bios
f1e31b8bd6eb drm/i915/display: fix comment on skl straps
50167b8d3287 drm/i915/display: start description-based ddi initialization
4bb4855c4a15 drm/i915/display: add phy, vbt and ddi indexes
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
one to the other.  Right now we already cover part of this by creating kind of

-:42: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_display.c:16809:
+	{ .name = "DDI A", .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },

-:43: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_display.c:16810:
+	{ .name = "DDI B", .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },

-:45: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_display.c:16812:
+	{ .name = "DDI C", .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x2, .vbt_idx = 0x2, },

-:46: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display.c:16813:
+	{ .name = "DDI D", .port = PORT_E, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x4, .phy_idx = 0x3, .vbt_idx = 0x3, },

-:59: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_display.c:16818:
+	{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },

-:60: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_display.c:16819:
+	{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },

-:62: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/intel_display.c:16821:
+	{ .name = "DDI TC1", .port = PORT_D, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x2, },

-:63: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_display.c:16822:
+	{ .name = "DDI TC2", .port = PORT_E, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x4, .phy_idx = 0x1, .vbt_idx = 0x3, },

-:64: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/display/intel_display.c:16823:
+	{ .name = "DDI TC3", .port = PORT_F, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x5, .phy_idx = 0x2, .vbt_idx = 0x4, },

-:65: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_display.c:16824:
+	{ .name = "DDI TC4", .port = PORT_G, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x6, .phy_idx = 0x3, .vbt_idx = 0x5, },

-:66: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/display/intel_display.c:16825:
+	{ .name = "DDI TC5", .port = PORT_H, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x7, .phy_idx = 0x4, .vbt_idx = 0x6, },

-:67: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#67: FILE: drivers/gpu/drm/i915/display/intel_display.c:16826:
+	{ .name = "DDI TC6", .port = PORT_I, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x8, .phy_idx = 0x5, .vbt_idx = 0x7, },

-:76: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_display.c:16831:
+	{ .name = "DDI A", .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },

-:77: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/display/intel_display.c:16832:
+	{ .name = "DDI B", .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },

-:78: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#78: FILE: drivers/gpu/drm/i915/display/intel_display.c:16833:
+	{ .name = "DDI C", .port = PORT_C, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2, },

-:79: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/display/intel_display.c:16834:
+	{ .name = "DDI D", .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x3, },

-:90: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/intel_display.c:16839:
+	{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0,},

-:91: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_display.c:16840:
+	{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1,},

-:92: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#92: FILE: drivers/gpu/drm/i915/display/intel_display.c:16841:
+	{ .name = "DDI TC1", .port = PORT_C, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x2, .phy_idx = 0x0, .vbt_idx = 0x2,},

-:93: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_display.c:16842:
+	{ .name = "DDI TC2", .port = PORT_D, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x3, .phy_idx = 0x1, .vbt_idx = 0x3,},

-:94: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_display.c:16843:
+	{ .name = "DDI TC3", .port = PORT_E, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x4, .phy_idx = 0x2, .vbt_idx = 0x4,},

-:95: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_display.c:16844:
+	{ .name = "DDI TC4", .port = PORT_F, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x5, .phy_idx = 0x3, .vbt_idx = 0x5,},

total: 0 errors, 23 warnings, 0 checks, 114 lines checked
90085cc968a8 drm/i915/display: use port_info in intel_ddi_init
-:134: CHECK:LINE_SPACING: Please don't use multiple blank lines
#134: FILE: drivers/gpu/drm/i915/display/intel_ddi.h:51:
 
+

total: 0 errors, 0 warnings, 1 checks, 128 lines checked
8e1bf7ebdffd drm/i915/display: replace port to phy conversions in intel_ddi.c

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
