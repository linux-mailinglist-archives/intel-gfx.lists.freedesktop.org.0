Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BD2A22588
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 22:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D3410E1A1;
	Wed, 29 Jan 2025 21:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4353A10E1A1;
 Wed, 29 Jan 2025 21:14:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/ddi=3A_Fix/?=
 =?utf-8?q?simplify_port_enabling/disabling?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2025 21:14:30 -0000
Message-ID: <173818527023.2599720.13898525493420526937@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250129200221.2508101-1-imre.deak@intel.com>
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
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

Series: drm/i915/ddi: Fix/simplify port enabling/disabling
URL   : https://patchwork.freedesktop.org/series/144122/
State : warning

== Summary ==

Error: dim checkpatch failed
393239b4a930 drm/i915/dsi: Use TRANS_DDI_FUNC_CTL's own port width macro
72f7abf7639f drm/i915/ddi: Fix HDMI port width programming in DDI_BUF_CTL
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/i915_reg.h:3638:
+#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)

total: 0 errors, 0 warnings, 1 checks, 16 lines checked
27f2c81f2436 drm/i915/ddi: Make all the PORT_WIDTH macros work the same way
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:113:
+#define   XELPDP_PORT_WIDTH(width)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, \
+								       (width) == 3 ? 4 : (width) - 1)

-:24: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:114:
+								       (width) == 3 ? 4 : (width) - 1)

total: 0 errors, 1 warnings, 1 checks, 51 lines checked
b6d9e741cbe8 drm/i915/ddi: Set missing TC DP PHY lane stagger delay in DDI_BUF_CTL
a8b8fc2964ef drm/i915/ddi: Simplify the port enabling via DDI_BUF_CTL
8dd698c540da drm/i915/ddi: Simplify the port disabling via DDI_BUF_CTL
a9f33a241a47 drm/i915/ddi: Simplify waiting for a port to idle via DDI_BUF_CTL
4ca0ab7e962c drm/i915/ddi: Move platform checks within mtl_ddi_enable/disable_d2d_link()
737bb169b41a drm/i915/ddi: Unify the platform specific functions disabling a port
4f1371dddcf0 drm/i915/ddi: Add a helper to enable a port
f30d2821af3d drm/i915/ddi: Sanitize DDI_BUF_CTL register definitions
-:47: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#47: FILE: drivers/gpu/drm/i915/i915_reg.h:3643:
+#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
+							       (width) == 3 ? 4 : (width) - 1)

total: 0 errors, 0 warnings, 1 checks, 39 lines checked
f509c0c72cc7 drm/i915/ddi: Configure/enable a port in DDI_BUF_CTL via read-modify-write
4ea9be828a73 drm/i915/ddi: Factor out a helper to get DDI_BUF_CTL's config value
8854946e6719 drm/i915/ddi: Reuse helper to compute the HDMI DDI_BUF_CTL config
d3a7a50b37a2 drm/i915/ddi: Reuse helper to compute the HDMI PORT_BUF_CTL1 config
230d99a3657a drm/i915/ddi: Move platform/encoder checks within adlp_tbt_to_dp_alt_switch_wa()
4ff7b0efe88b drm/i915/ddi: Unify the platform specific functions enabling a port


