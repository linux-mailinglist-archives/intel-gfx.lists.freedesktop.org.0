Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808CE9F107F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 16:12:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C4610F048;
	Fri, 13 Dec 2024 15:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23AA010F04F;
 Fri, 13 Dec 2024 15:12:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/cx0=5Fphy?=
 =?utf-8?q?=3A_Update_HDMI_TMDS_C20_algorithm_value_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2024 15:12:22 -0000
Message-ID: <173410274213.2161898.5016054781232582572@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241213143408.3051070-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20241213143408.3051070-1-dnyaneshwar.bhadane@intel.com>
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

Series: drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value (rev3)
URL   : https://patchwork.freedesktop.org/series/141280/
State : warning

== Summary ==

Error: dim checkpatch failed
3053fde854ce drm/i915/display: Add MTL subplatforms definition
63f93600e1d7 drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
-:116: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#116: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:292:
+#define   C20_PHY_TX_DCC_CAL_RANGE_MASK ^IREG_GENMASK16(11, 8)$

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:243:
+#define IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(id)  \
+	(((id) == ARLS_HOST_BRIDGE_PCI_ID1) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID2) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID3) || \
+	 ((id) == ARLS_HOST_BRIDGE_PCI_ID4))

total: 0 errors, 1 warnings, 1 checks, 104 lines checked


