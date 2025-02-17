Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D70AA38B1A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C103C10E595;
	Mon, 17 Feb 2025 18:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC60710E595;
 Mon, 17 Feb 2025 18:12:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Provide_?=
 =?utf-8?q?more_information_on_display_faults_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Feb 2025 18:12:48 -0000
Message-ID: <173981596876.3325879.16158275047864143481@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250217070047.953-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250217070047.953-1-ville.syrjala@linux.intel.com>
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

== Series Details ==

Series: drm/i915: Provide more information on display faults (rev3)
URL   : https://patchwork.freedesktop.org/series/143627/
State : warning

== Summary ==

Error: dim checkpatch failed
58ff02cb79db drm/i915: Add missing else to the if ladder in missing else
fb1760bf1c2f drm/i915: Introduce a minimal plane error state
826cd278350d drm/i915: Pimp display fault reporting
-:154: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#154: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1039:
+	{ .fault = GEN9_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

-:167: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#167: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1052:
+	{ .fault = GEN9_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

-:179: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#179: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1064:
+	{ .fault = GEN9_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

-:188: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#188: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1073:
+	{ .fault = GEN9_PIPE_CURSOR_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

-:193: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#193: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1078:
+	{ .fault = GEN8_PIPE_SPRITE_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:194: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1079:
+	{ .fault = GEN8_PIPE_PRIMARY_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:195: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1080:
+	{ .fault = GEN8_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

total: 0 errors, 7 warnings, 0 checks, 196 lines checked
7fe5cea31828 drm/i915: Hook in display GTT faults for IVB/HSW
-:45: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:744:
+	{ .fault = ERR_INT_SPRITE_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:46: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:745:
+	{ .fault = ERR_INT_PRIMARY_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:47: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:746:
+	{ .fault = ERR_INT_CURSOR_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

-:48: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:747:
+	{ .fault = ERR_INT_SPRITE_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:49: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:748:
+	{ .fault = ERR_INT_PRIMARY_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:50: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:749:
+	{ .fault = ERR_INT_CURSOR_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

-:51: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:750:
+	{ .fault = ERR_INT_SPRITE_C_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:52: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:751:
+	{ .fault = ERR_INT_PRIMARY_C_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:53: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:752:
+	{ .fault = ERR_INT_CURSOR_C_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

total: 0 errors, 9 warnings, 0 checks, 82 lines checked
df5b50b28c26 drm/i915: Hook in display GTT faults for ILK/SNB
-:40: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:864:
+	{ .fault = GTT_FAULT_SPRITE_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:41: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:865:
+	{ .fault = GTT_FAULT_SPRITE_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:42: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:866:
+	{ .fault = GTT_FAULT_PRIMARY_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:43: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:867:
+	{ .fault = GTT_FAULT_PRIMARY_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:44: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:868:
+	{ .fault = GTT_FAULT_CURSOR_A_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

-:45: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:869:
+	{ .fault = GTT_FAULT_CURSOR_B_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },

total: 0 errors, 6 warnings, 0 checks, 90 lines checked
70f2337c58ec drm/i915: Introduce i915_error_regs
e92230bfdda6 drm/i915: Un-invert {i9xx,i965}_error_mask()
47564b99ca4b drm/i915: Hook up display fault interrupts for VLV/CHV
-:59: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1811:
+	{ .fault = SPRITEB_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE1, },

-:60: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1812:
+	{ .fault = SPRITEA_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:61: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1813:
+	{ .fault = PLANEA_INVALID_GTT_STATUS,  .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:62: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1814:
+	{ .fault = CURSORA_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR,  },

-:63: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1815:
+	{ .fault = SPRITED_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE1, },

-:64: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1816:
+	{ .fault = SPRITEC_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:65: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1817:
+	{ .fault = PLANEB_INVALID_GTT_STATUS,  .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:66: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1818:
+	{ .fault = CURSORB_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR,  },

-:67: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#67: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1819:
+	{ .fault = SPRITEF_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE1, },

-:68: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1820:
+	{ .fault = SPRITEE_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },

-:69: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1821:
+	{ .fault = PLANEC_INVALID_GTT_STATUS,  .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },

-:70: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1822:
+	{ .fault = CURSORC_INVALID_GTT_STATUS, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR,  },

total: 0 errors, 12 warnings, 0 checks, 237 lines checked


