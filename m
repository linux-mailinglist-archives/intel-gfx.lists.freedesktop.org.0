Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAB66EA9A4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A1610EDF7;
	Fri, 21 Apr 2023 11:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A89E10EDF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077727; x=1713613727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=05+MGos4Yvt3JhzURWOv7LFFKTZlThTTosEBm6Uz6nI=;
 b=hoXFGUDy47AsvAMXb8S6/JL398QSBI6z9s8YWmPeiqQAZxJJ9KMe1UAn
 U5+1URbE4GeqN5WZzN0bze7BcoXszx62rBjACtuxnLQRcGY2EeCiEPz3p
 8+zf9D5OMealLSWifF8j+gzdVpDil0gcuj8S9YzIwzSuVxo9lt2JR3q7s
 58TBIbm2ah755EHhFZuvZkBLTWbrTFp7j4POhLkhsIRaqEuRUgeL4+5dH
 YMZINP7tugrhaIIezpemVDFzDrUdMIUoAn7dJsCtH1ED+6Ra8rvMwpG3g
 B8eK805e76lNjsJlENqotBD9eUtvM9S0sidmT62+TtbRCV1xlpHJUhQ8R Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432252053"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432252053"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="642491497"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="642491497"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:50 +0300
Message-Id: <41ebaf39836b5fd8879445c52622f06e1c9eb1db.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/13] drm/display/dp_mst: convert to struct
 drm_edid
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert the topology manager to use struct drm_edid, add
drm_dp_mst_edid_read() that returns drm_edid, and rewrite the old
drm_dp_mst_get_edid() to use it.

Note that the old drm_get_edid() ended up calling
drm_connector_update_edid_property(). This responsibility is now
deferred to drivers, which all do it anyway after calling
drm_dp_mst_edid_read() or drm_dp_mst_get_edid().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 53 +++++++++++++++----
 include/drm/display/drm_dp_mst_helper.h       |  9 +++-
 2 files changed, 49 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index a2b8732db0c8..be71be95b706 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -1823,7 +1823,7 @@ static void drm_dp_destroy_port(struct kref *kref)
 		return;
 	}
 
-	kfree(port->cached_edid);
+	drm_edid_free(port->cached_edid);
 
 	/*
 	 * we can't destroy the connector here, as we might be holding the
@@ -2272,8 +2272,8 @@ drm_dp_mst_port_add_connector(struct drm_dp_mst_branch *mstb,
 	if (port->pdt != DP_PEER_DEVICE_NONE &&
 	    drm_dp_mst_is_end_device(port->pdt, port->mcs) &&
 	    port->port_num >= DP_MST_LOGICAL_PORT_0)
-		port->cached_edid = drm_get_edid(port->connector,
-						 &port->aux.ddc);
+		port->cached_edid = drm_edid_read_ddc(port->connector,
+						      &port->aux.ddc);
 
 	drm_connector_register(port->connector);
 	return;
@@ -4133,7 +4133,7 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
 		ret = connector_status_connected;
 		/* for logical ports - cache the EDID */
 		if (port->port_num >= DP_MST_LOGICAL_PORT_0 && !port->cached_edid)
-			port->cached_edid = drm_get_edid(connector, &port->aux.ddc);
+			port->cached_edid = drm_edid_read_ddc(connector, &port->aux.ddc);
 		break;
 	case DP_PEER_DEVICE_DP_LEGACY_CONV:
 		if (port->ldps)
@@ -4147,7 +4147,7 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
 EXPORT_SYMBOL(drm_dp_mst_detect_port);
 
 /**
- * drm_dp_mst_get_edid() - get EDID for an MST port
+ * drm_dp_mst_edid_read() - get EDID for an MST port
  * @connector: toplevel connector to get EDID for
  * @mgr: manager for this port
  * @port: unverified pointer to a port.
@@ -4156,9 +4156,11 @@ EXPORT_SYMBOL(drm_dp_mst_detect_port);
  * It validates the pointer still exists so the caller doesn't require a
  * reference.
  */
-struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
+const struct drm_edid *drm_dp_mst_edid_read(struct drm_connector *connector,
+					    struct drm_dp_mst_topology_mgr *mgr,
+					    struct drm_dp_mst_port *port)
 {
-	struct edid *edid = NULL;
+	const struct drm_edid *drm_edid;
 
 	/* we need to search for the port in the mgr in case it's gone */
 	port = drm_dp_mst_topology_get_port_validated(mgr, port);
@@ -4166,12 +4168,41 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_
 		return NULL;
 
 	if (port->cached_edid)
-		edid = drm_edid_duplicate(port->cached_edid);
-	else {
-		edid = drm_get_edid(connector, &port->aux.ddc);
-	}
+		drm_edid = drm_edid_dup(port->cached_edid);
+	else
+		drm_edid = drm_edid_read_ddc(connector, &port->aux.ddc);
 
 	drm_dp_mst_topology_put_port(port);
+
+	return drm_edid;
+}
+EXPORT_SYMBOL(drm_dp_mst_edid_read);
+
+/**
+ * drm_dp_mst_get_edid() - get EDID for an MST port
+ * @connector: toplevel connector to get EDID for
+ * @mgr: manager for this port
+ * @port: unverified pointer to a port.
+ *
+ * This function is deprecated; please use drm_dp_mst_edid_read() instead.
+ *
+ * This returns an EDID for the port connected to a connector,
+ * It validates the pointer still exists so the caller doesn't require a
+ * reference.
+ */
+struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
+				 struct drm_dp_mst_topology_mgr *mgr,
+				 struct drm_dp_mst_port *port)
+{
+	const struct drm_edid *drm_edid;
+	struct edid *edid;
+
+	drm_edid = drm_dp_mst_edid_read(connector, mgr, port);
+
+	edid = drm_edid_duplicate(drm_edid_raw(drm_edid));
+
+	drm_edid_free(drm_edid);
+
 	return edid;
 }
 EXPORT_SYMBOL(drm_dp_mst_get_edid);
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index 5be96a158ab2..f962e97880b4 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -138,7 +138,7 @@ struct drm_dp_mst_port {
 	 * @cached_edid: for DP logical ports - make tiling work by ensuring
 	 * that the EDID for all connectors is read immediately.
 	 */
-	struct edid *cached_edid;
+	const struct drm_edid *cached_edid;
 
 	/**
 	 * @fec_capable: bool indicating if FEC can be supported up to that
@@ -819,7 +819,12 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
 		       struct drm_dp_mst_topology_mgr *mgr,
 		       struct drm_dp_mst_port *port);
 
-struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port);
+const struct drm_edid *drm_dp_mst_edid_read(struct drm_connector *connector,
+					    struct drm_dp_mst_topology_mgr *mgr,
+					    struct drm_dp_mst_port *port);
+struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
+				 struct drm_dp_mst_topology_mgr *mgr,
+				 struct drm_dp_mst_port *port);
 
 int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
 			     int link_rate, int link_lane_count);
-- 
2.39.2

