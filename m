Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 385AC9F6231
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 10:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D3A10EAE4;
	Wed, 18 Dec 2024 09:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62E3310EAE4;
 Wed, 18 Dec 2024 09:56:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/cx0=5Fphy?=
 =?utf-8?q?=3A_Update_HDMI_TMDS_C20_algorithm_value_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2024 09:56:03 -0000
Message-ID: <173451576339.4031.11410556995604322932@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
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

Series: drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value (rev4)
URL   : https://patchwork.freedesktop.org/series/141280/
State : warning

== Summary ==

Error: dim checkpatch failed
d77020e25e92 drm/i915/display: Add MTL subplatforms definition
-:69: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#69: FILE: include/drm/intel/pciids.h:814:
+#define INTEL_MTL_U_IDS(MACRO__, ...) \
 	MACRO__(0x7D40, ## __VA_ARGS__), \
+	MACRO__(0x7D45, ## __VA_ARGS__)

-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#69: FILE: include/drm/intel/pciids.h:814:
+#define INTEL_MTL_U_IDS(MACRO__, ...) \
 	MACRO__(0x7D40, ## __VA_ARGS__), \
+	MACRO__(0x7D45, ## __VA_ARGS__)

-:74: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#74: FILE: include/drm/intel/pciids.h:818:
+#define INTEL_MTL_IDS(MACRO__, ...) \
+	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__), \
 	MACRO__(0x7D55, ## __VA_ARGS__), \
 	MACRO__(0x7D60, ## __VA_ARGS__), \
 	MACRO__(0x7DD5, ## __VA_ARGS__)

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#74: FILE: include/drm/intel/pciids.h:818:
+#define INTEL_MTL_IDS(MACRO__, ...) \
+	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__), \
 	MACRO__(0x7D55, ## __VA_ARGS__), \
 	MACRO__(0x7D60, ## __VA_ARGS__), \
 	MACRO__(0x7DD5, ## __VA_ARGS__)

total: 2 errors, 0 warnings, 2 checks, 46 lines checked
e7c45ae4efda drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
-:118: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#118: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:297:
+#define   C20_PHY_TX_DCC_CAL_RANGE_MASK ^IREG_GENMASK16(11, 8)$

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:242:
+#define IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(id)  \
+	(((id) == ARLS_HOST_BRIDGE_PCI_ID1) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID2) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID3) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID4))

total: 0 errors, 1 warnings, 1 checks, 103 lines checked


