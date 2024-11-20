Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D739D3ADA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8A710E745;
	Wed, 20 Nov 2024 12:43:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CkqousYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4EC10E733;
 Wed, 20 Nov 2024 12:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106623; x=1763642623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JnPDUsI72aIWqi0d5Iw2Xs9jf3B6RTOWrbw86fg+Caw=;
 b=CkqousYEBxonHPuZs5wPfWae++6i3YRIg29HsJwmYktePFfQb47+CJaB
 VZUV6drPCrt4aftIXitHjiOympETxG3AZjW+vuGePfDxrU/W5vKR1YUSA
 fLLfRu0Q3j4mYXz93Xpe6n8dxi7ynPSeQkCeX3OlIDXmJBY0ApX/KWr8x
 bSwSAC7/Q1xDhDaeyv1P61dJwytfcw/MJ8t/9T85Qbyw3o1XxdWQ5MOgD
 iKniFEc5KpaCxTurN0RQLoHGdPXJ9+fZUrVpq+PXjSV+giiwl7h8oecDT
 K9w2n4zARt4tUur42rs6Ty82EFvnbNzalB7b6ZClrQRGpgeXrkYUCjh2q A==;
X-CSE-ConnectionGUID: nqN5aEX/SEq9liNv1hlxsw==
X-CSE-MsgGUID: ilAUeTmKTa6rtCAUO26ANA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42783348"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42783348"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:43 -0800
X-CSE-ConnectionGUID: oIU3y+usRiis50xRynfNMw==
X-CSE-MsgGUID: lYImcNy2R4S8NJapQ6WiIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94363489"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 04/11] drm/i915/mst: unify MST topology callback naming to
 mst_topology_*
Date: Wed, 20 Nov 2024 14:43:12 +0200
Message-Id: <e8efc8fddc3ca93e1256a1dad13bc4eca07c3382.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Make it easier to keep track of what belongs where.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +++++++++++----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b5e8db579e20..9dd8d2d9048b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1615,9 +1615,9 @@ static bool mst_connector_get_hw_state(struct intel_connector *connector)
 	return encoder->get_hw_state(encoder, &pipe);
 }
 
-static int intel_dp_mst_add_properties(struct intel_dp *intel_dp,
-				       struct drm_connector *connector,
-				       const char *pathprop)
+static int mst_topology_add_connector_properties(struct intel_dp *intel_dp,
+						 struct drm_connector *connector,
+						 const char *pathprop)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
@@ -1703,9 +1703,10 @@ static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *conn
 	return true;
 }
 
-static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
-							struct drm_dp_mst_port *port,
-							const char *pathprop)
+static struct drm_connector *
+mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
+			   struct drm_dp_mst_port *port,
+			   const char *pathprop)
 {
 	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -1762,7 +1763,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 			goto err;
 	}
 
-	ret = intel_dp_mst_add_properties(intel_dp, connector, pathprop);
+	ret = mst_topology_add_connector_properties(intel_dp, connector, pathprop);
 	if (ret)
 		goto err;
 
@@ -1779,16 +1780,16 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 }
 
 static void
-intel_dp_mst_poll_hpd_irq(struct drm_dp_mst_topology_mgr *mgr)
+mst_topology_poll_hpd_irq(struct drm_dp_mst_topology_mgr *mgr)
 {
 	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
 
 	intel_hpd_trigger_irq(dp_to_dig_port(intel_dp));
 }
 
-static const struct drm_dp_mst_topology_cbs mst_cbs = {
-	.add_connector = intel_dp_add_mst_connector,
-	.poll_hpd_irq = intel_dp_mst_poll_hpd_irq,
+static const struct drm_dp_mst_topology_cbs mst_topology_cbs = {
+	.add_connector = mst_topology_add_connector,
+	.poll_hpd_irq = mst_topology_poll_hpd_irq,
 };
 
 /* Create a fake encoder for an individual MST stream */
@@ -1881,7 +1882,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 	if (DISPLAY_VER(display) < 11 && port == PORT_E)
 		return 0;
 
-	intel_dp->mst_mgr.cbs = &mst_cbs;
+	intel_dp->mst_mgr.cbs = &mst_topology_cbs;
 
 	/* create encoders */
 	mst_stream_encoders_create(dig_port);
-- 
2.39.5

