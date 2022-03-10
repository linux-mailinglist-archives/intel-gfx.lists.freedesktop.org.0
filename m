Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A2A4D3E63
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E778A10E568;
	Thu, 10 Mar 2022 00:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C1510E568
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873294; x=1678409294;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b+r1j1W9KbR6uXWoY1lNiOBQq9inhbtBAM2y61vEDzQ=;
 b=CfGHRoup7rO5foJZ51YkrC2jzFF6yMLJEDweJrjJnmLf2OcHu6g/3ioV
 W2XIWamzcNklI4X5rib/dYyE3nr5m+SGoUuh4NSjRAtrysNVyB+IXIVF4
 WF4ezJJXp3FBmsFruWG0NS/hJ1NHKJv9THB4yEPs9B2AkqyFdKXbDCFY4
 +0K55SfwtjFSWf+6jIvAq0UKCjTpMn5QHWjDiW3ATNFT5br4JRjL+VRT3
 yVe7y3aDQrDMaY1vgfZW6pUd8Mo17GSNrwDdZD0T1UdTSlzz7rkmIzwPu
 s6ByKwTVXSj7DeTC1XiQbq1gqZParHUpaX5pmBAsWgCErRoQqXcquWw4U g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255313203"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="255313203"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="632810739"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 09 Mar 2022 16:48:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:52 +0200
Message-Id: <20220310004802.16310-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915: Pimp DRRS debugs
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

Use the standard [CONNECTOR:%d:%s] format in the DRRS debugs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3b871a51eb55..17bedecbd7b2 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -432,26 +432,32 @@ intel_drrs_init(struct intel_connector *connector,
 
 	if (DISPLAY_VER(dev_priv) <= 6) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "DRRS supported for Gen7 and above\n");
+			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
+			    connector->base.base.id, connector->base.name);
 		return NULL;
 	}
 
 	if ((DISPLAY_VER(dev_priv) < 8 && !HAS_GMCH(dev_priv)) &&
 	    encoder->port != PORT_A) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "DRRS only supported on eDP port A\n");
+			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
+			    connector->base.base.id, connector->base.name,
+			    encoder->base.base.id, encoder->base.name);
 		return NULL;
 	}
 
 	if (dev_priv->vbt.drrs_type != SEAMLESS_DRRS_SUPPORT) {
-		drm_dbg_kms(&dev_priv->drm, "VBT doesn't support DRRS\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
+			    connector->base.base.id, connector->base.name);
 		return NULL;
 	}
 
 	downclock_mode = intel_panel_edid_downclock_mode(connector, fixed_mode);
 	if (!downclock_mode) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "Downclock mode is not found. DRRS not supported\n");
+			    "[CONNECTOR:%d:%s] DRRS not supported due to lack of downclock mode\n",
+			    connector->base.base.id, connector->base.name);
 		return NULL;
 	}
 
@@ -459,6 +465,8 @@ intel_drrs_init(struct intel_connector *connector,
 
 	dev_priv->drrs.refresh_rate_type = DRRS_HIGH_RR;
 	drm_dbg_kms(&dev_priv->drm,
-		    "seamless DRRS supported for eDP panel.\n");
+		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
+		    connector->base.base.id, connector->base.name);
+
 	return downclock_mode;
 }
-- 
2.34.1

