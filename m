Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16ED83E6EF
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 00:27:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE4410FFED;
	Fri, 26 Jan 2024 23:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C361710FFED;
 Fri, 26 Jan 2024 23:27:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Move_some_LNL_registers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 26 Jan 2024 23:27:39 -0000
Message-ID: <170631165979.764780.803881984858460306@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240126224638.4132016-1-lucas.demarchi@intel.com>
In-Reply-To: <20240126224638.4132016-1-lucas.demarchi@intel.com>
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

Series: drm/i915/display: Move some LNL registers
URL   : https://patchwork.freedesktop.org/series/129226/
State : warning

== Summary ==

Error: dim checkpatch failed
b7a2f39f8e10 drm/i915/xe2lpd: Move D2D enable/disable
-:87: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#87: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3345:
+		if (DISPLAY_VER(dev_priv) >= 20)
+		       buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;

total: 0 errors, 1 warnings, 0 checks, 80 lines checked
5b1009e12a6b drm/i915/xe2lpd: Move registers to PICA
-:384: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#384: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:27:
+#define __xe2lpd_port_idx(port)						\
+	(port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)

-:384: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'port' may be better as '(port)' to avoid precedence issues
#384: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:27:
+#define __xe2lpd_port_idx(port)						\
+	(port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)

-:397: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#397: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:39:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:397: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#397: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:39:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:415: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#415: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:59:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)			\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) :	\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))

-:415: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#415: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:59:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)			\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) :	\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))

-:432: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#432: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:90:
+#define XELPDP_PORT_BUF_CTL1(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL1(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL1(port))

-:450: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#450: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:115:
+#define XELPDP_PORT_BUF_CTL2(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL2(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL2(port))

-:467: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#467: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:138:
+#define XELPDP_PORT_BUF_CTL3(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL3(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL3(port))

-:484: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#484: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:161:
+#define XELPDP_PORT_MSGBUS_TIMER(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_MSGBUS_TIMER(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_MSGBUS_TIMER(port, lane))

-:484: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#484: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:161:
+#define XELPDP_PORT_MSGBUS_TIMER(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_MSGBUS_TIMER(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_MSGBUS_TIMER(port, lane))

-:501: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#501: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:178:
+#define XELPDP_PORT_CLOCK_CTL(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_CLOCK_CTL(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_CLOCK_CTL(port))

total: 0 errors, 0 warnings, 12 checks, 574 lines checked


