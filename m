Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A435A3612E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 16:14:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA55110ECD4;
	Fri, 14 Feb 2025 15:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4969F10ECD4;
 Fri, 14 Feb 2025 15:14:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/ddi=3A_Fix/?=
 =?utf-8?q?simplify_port_enabling/disabling_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2025 15:14:22 -0000
Message-ID: <173954606229.2072457.1588994837027760876@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250214142001.552916-1-imre.deak@intel.com>
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
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

Series: drm/i915/ddi: Fix/simplify port enabling/disabling (rev2)
URL   : https://patchwork.freedesktop.org/series/144122/
State : warning

== Summary ==

Error: dim checkpatch failed
9bfd2ee16337 drm/i915/dsi: Use TRANS_DDI_FUNC_CTL's own port width macro
dc37836b346f drm/i915/ddi: Fix HDMI port width programming in DDI_BUF_CTL
-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/i915_reg.h:3642:
+#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)

total: 0 errors, 0 warnings, 1 checks, 16 lines checked
3493a34a3f10 drm/i915/ddi: Make all the PORT_WIDTH macros work the same way
-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:113:
+#define   XELPDP_PORT_WIDTH(width)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, \
+								       ((width) == 3 ? 4 : (width) - 1))

-:27: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:114:
+								       ((width) == 3 ? 4 : (width) - 1))

total: 0 errors, 1 warnings, 1 checks, 51 lines checked
6897dde621fd drm/i915/ddi: Set missing TC DP PHY lane stagger delay in DDI_BUF_CTL
f999b033c705 drm/i915/ddi: Simplify the port enabling via DDI_BUF_CTL
91a0ae5a7035 drm/i915/ddi: Simplify the port disabling via DDI_BUF_CTL
fa19fa724090 drm/i915/ddi: Simplify waiting for a port to get active/idle via DDI_BUF_CTL
eebacf83cd48 drm/i915/ddi: Move platform checks within mtl_ddi_enable/disable_d2d_link()
aab56c07cd06 drm/i915/ddi: Unify the platform specific functions disabling a port
b9cef1240ffc drm/i915/ddi: Add a helper to enable a port
7dd87d8a9271 drm/i915/ddi: Sanitize DDI_BUF_CTL register definitions
-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_reg.h:3647:
+#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
+							       ((width) == 3 ? 4 : (width) - 1))

total: 0 errors, 0 warnings, 1 checks, 39 lines checked


