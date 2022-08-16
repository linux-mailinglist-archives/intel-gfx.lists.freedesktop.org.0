Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1F2595E9E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 16:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F24195A68;
	Tue, 16 Aug 2022 14:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1377C95A68
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 14:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660661720; x=1692197720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=COQx16o+CLis8ml1K7qamjyZf1B6XhWD5Ah1vKJIE14=;
 b=dY0OO5NpYgucFvMrUp4/znNB7LZEIEfLlt7zcotkupurNxQl0zJZYv2u
 Zb3NsRMTJoQBRdqtmpjdF0kQx2waIptNTK42lEtvyhy/JCanvFgiwBMa0
 MKearEVlwMVJER7C/9RkaoAumJHyCtMzOKogKMTzEQCQ/FJZMOuDHsjyp
 U4NfFUGOd/Zl6Fs74KxJs4pgXmNC33Fu2R4R+Z7nQHmUGS8MijFwtYKoe
 8D4HGO4tBHIlI6DXHS2BuOqmUsuq6B2xgNTrbwsmmjypo3pLIg64jVoJv
 FaKnXc3CzHmjHCH5yRZrUH+8qiUSoSuKrfddVGhIaoYclq072xyyoLhfA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="272633499"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="272633499"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 07:55:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="635923550"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 07:55:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Aug 2022 17:55:08 +0300
Message-Id: <b0f4f087866257d280eb97d6bcfcefd109cc5fa2.1660661647.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660661647.git.jani.nikula@intel.com>
References: <cover.1660661647.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/dsi: filter invalid backlight and
 CABC ports
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
Cc: jani.nikula@intel.com, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid using ports that aren't initialized in case the VBT backlight or
CABC ports have invalid values. This fixes a NULL pointer dereference of
intel_dsi->dsi_hosts[port] in such cases.

Cc: stable@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 7 +++++++
 drivers/gpu/drm/i915/display/vlv_dsi.c | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5dcfa7feffa9..885c74f60366 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2070,7 +2070,14 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	else
 		intel_dsi->ports = BIT(port);
 
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
+
 	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
+
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
+		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
+
 	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index b9b1fed99874..35136d26e517 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1933,7 +1933,14 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	else
 		intel_dsi->ports = BIT(port);
 
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
+
 	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
+
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
+		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
+
 	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
 
 	/* Create a DSI host (and a device) for each port. */
-- 
2.34.1

