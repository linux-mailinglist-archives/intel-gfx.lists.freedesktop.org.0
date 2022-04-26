Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 341DB510911
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D77010E5A5;
	Tue, 26 Apr 2022 19:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04C4510E5B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001570; x=1682537570;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Dv1gkN72CEHzAutVr0k3/+TXBUSWlICxwwetFMvG+b4=;
 b=l+TXUN+2YQmZtAxa4aZCPEwnHuikoyJ+gju/z8TuT+KauOyS69UjBA8o
 GVnhOO6tN7gu23ewdZI0X6qaHiku2xRHf/hji1SxvMNboaY4osGSLqT9n
 EOQO+eidBisrv4Jv/JSEe7NFbeo6Ck2E0wLdfe1q9aES+iTCn3Hs668jH
 /twJokE5Kg1K9Qbe7PDMahpAuijIj2Vhxvqws0ql7ENRO6oRFUyWAh9Rd
 LAXSUIutbiuBIOBjRXE/cK2uHz4dlBttst4keSSf2iTxx0o4bfFi5zbSk
 cFne0IVZiX09o1JIwn/mxbclSHkVbMasE4pFEZ4k+XF80kWfWlQTAe4Vq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="245622239"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="245622239"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="705201840"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 26 Apr 2022 12:32:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:12 +0300
Message-Id: <20220426193222.3422-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/18] drm/i915/bios: Don't parse some panel
 specific data multiple times
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make sure we don't cause memory leaks/etc. by parsing panel_type
specific parts multiple times. The real solution would be to stop
stuffing panel specific stuff into i915->vbt, but in the meantime
let's just make sure we don't leak too badly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b246a3a649a0..24e3b2f2485e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -729,6 +729,10 @@ parse_generic_dtd(struct drm_i915_private *i915)
 	struct drm_display_mode *panel_fixed_mode;
 	int num_dtd;
 
+	/* FIXME stop using i915->vbt for panel specific data */
+	if (i915->vbt.lfp_lvds_vbt_mode)
+		return;
+
 	/*
 	 * Older VBTs provided DTD information for internal displays through
 	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
@@ -908,6 +912,10 @@ parse_sdvo_panel_data(struct drm_i915_private *i915)
 	struct drm_display_mode *panel_fixed_mode;
 	int index;
 
+	/* FIXME stop using i915->vbt for panel specific data */
+	if (i915->vbt.sdvo_lvds_vbt_mode)
+		return;
+
 	index = i915->params.vbt_sdvo_panel_type;
 	if (index == -2) {
 		drm_dbg_kms(&i915->drm,
@@ -1436,6 +1444,10 @@ parse_mipi_config(struct drm_i915_private *i915)
 	int panel_type = i915->vbt.panel_type;
 	enum port port;
 
+	/* FIXME stop using i915->vbt for panel specific data */
+	if (i915->vbt.dsi.config)
+		return;
+
 	/* parse MIPI blocks only if LFP type is MIPI */
 	if (!intel_bios_is_dsi_present(i915, &port))
 		return;
@@ -1756,6 +1768,10 @@ parse_mipi_sequence(struct drm_i915_private *i915)
 	u8 *data;
 	int index = 0;
 
+	/* FIXME stop using i915->vbt for panel specific data */
+	if (i915->vbt.dsi.data)
+		return;
+
 	/* Only our generic panel driver uses the sequence block. */
 	if (i915->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
 		return;
-- 
2.35.1

