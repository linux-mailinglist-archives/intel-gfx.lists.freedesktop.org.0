Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F32DE140C83
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453936F5B2;
	Fri, 17 Jan 2020 14:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 888DE6F5B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:30:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:18 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="425975926"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 16:29:29 +0200
Message-Id: <42544944ce505826335bab30cc76e135581229be.1579270868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579270868.git.jani.nikula@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: use intel_bios_is_port_present()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't access i915->vbt.ddi_port_info[] directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 44bbc7e74fc3..5f54aca7c36f 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -265,8 +265,8 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 
 static u32 ehl_combo_phy_a_mux(struct drm_i915_private *i915, u32 val)
 {
-	bool ddi_a_present = i915->vbt.ddi_port_info[PORT_A].child != NULL;
-	bool ddi_d_present = i915->vbt.ddi_port_info[PORT_D].child != NULL;
+	bool ddi_a_present = intel_bios_is_port_present(i915, PORT_A);
+	bool ddi_d_present = intel_bios_is_port_present(i915, PORT_D);
 	bool dsi_present = intel_bios_is_dsi_present(i915, NULL);
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
