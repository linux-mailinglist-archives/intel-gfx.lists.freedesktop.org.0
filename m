Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3566A6EA99A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F64310EE09;
	Fri, 21 Apr 2023 11:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3CA510EDF7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077684; x=1713613684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OBNnmwnQ32jW7tjygeSYsHFraLLhKtyzaE0deYS0PAI=;
 b=dWAvgjYt9w32o77VKUCUFN77V3WLSOkBgry20sbGUC1Ej+dQ2uNM+e9E
 Zd6GqD5qQgwoumyIJrYuwTJa9WvoCW4w3KP4PPCeHYoVKGwHDDODWdreI
 sBXjUrDrdfHo86XIhM2T6NjRLVwFcTZqJBqLQeI0IKuRwfat1cKJvLJCW
 IdD7pWZ/wyOAO771hbOVe8kWwzzMy1QImjCU8uQ1+9/1KBi/hVVee8hKZ
 QVXSJgQ5GQiPvA20TtbacP2nF7sJLHknrZsRyDyumSIQK4NurRlo1o6Tn
 lo1dH6KzA+jSHapeD2K0U8D0Dv4KvPehoSeRCsJdHDiyIySr5gy9rnoxZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344730242"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344730242"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="685709391"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685709391"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:40 +0300
Message-Id: <3d7838d0be7c4639037cecd532b577bbfd262cf9.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/display/dp_mst: drop has_audio from
 struct drm_dp_mst_port
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

Caching the has_audio in struct drm_dp_mst_port seems odd, and oddly
placed. Defer audio handling to drivers, and use the info from the
connector display info. i915 was the only one using it anyway.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c          | 2 +-
 include/drm/display/drm_dp_mst_helper.h              | 5 -----
 4 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 38dab76ae69e..a2b8732db0c8 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -4170,7 +4170,7 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_
 	else {
 		edid = drm_get_edid(connector, &port->aux.ddc);
 	}
-	port->has_audio = drm_detect_monitor_audio(edid);
+
 	drm_dp_mst_topology_put_port(port);
 	return edid;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index e72288662f02..77caed2552d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -244,9 +244,9 @@ static void intel_dp_info(struct seq_file *m,
 }
 
 static void intel_dp_mst_info(struct seq_file *m,
-			      struct intel_connector *intel_connector)
+			      struct intel_connector *connector)
 {
-	bool has_audio = intel_connector->port->has_audio;
+	bool has_audio = connector->base.display_info.has_audio;
 
 	seq_printf(m, "\taudio support: %s\n", str_yes_no(has_audio));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2c49d9ab86a2..506118a13866 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -298,7 +298,7 @@ static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
 		to_intel_connector(conn_state->connector);
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return connector->port->has_audio;
+		return connector->base.display_info.has_audio;
 	else
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index 32c764fb9cb5..5be96a158ab2 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -139,11 +139,6 @@ struct drm_dp_mst_port {
 	 * that the EDID for all connectors is read immediately.
 	 */
 	struct edid *cached_edid;
-	/**
-	 * @has_audio: Tracks whether the sink connector to this port is
-	 * audio-capable.
-	 */
-	bool has_audio;
 
 	/**
 	 * @fec_capable: bool indicating if FEC can be supported up to that
-- 
2.39.2

