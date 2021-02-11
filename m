Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F87F318D22
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A47F36E42D;
	Thu, 11 Feb 2021 14:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A996E42D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:20:20 +0000 (UTC)
IronPort-SDR: 2JV96zaMxfdN1IsOVhTCOXLYoDrwLGRl70QCC+TYNAduzMwyjBhF0RmIKDGY1PbwHrQhA0Fscz
 fnrJRfxCuafQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="179687039"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="179687039"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:20:19 -0800
IronPort-SDR: dKj/YGd0UB1PeLti4wSt6g5cAJGyybV7aZS806uH0WJ6+jcg+4MdoyZuFmz6ZEXVw6D11a5B/n
 Cu5J64pwXfRg==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="380682948"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:20:18 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 19:35:02 +0530
Message-Id: <20210211140502.22786-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210129080043.24614-1-anshuman.gupta@intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/debugfs: HDCP capability enc NULL
 check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DP-MST connector encoder initializes at modeset
Adding a connector->encoder NULL check in order to
avoid any NULL pointer dereference.
intel_hdcp_enable() already handle this but debugfs
can also invoke the intel_{hdcp,hdcp2_capable}.
Handling it gracefully.

v2:
- Use necessary lock and NULL check in
  i915_hdcp_sink_capability_show. [Imre]

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c    | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d6e4a9237bda..8af663b84314 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2198,16 +2198,27 @@ DEFINE_SHOW_ATTRIBUTE(i915_panel);
 static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
+	int ret;
 
-	if (connector->status != connector_status_connected)
-		return -ENODEV;
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	if (!connector->encoder || connector->status != connector_status_connected) {
+		ret = -ENODEV;
+		goto out;
+	}
 
 	seq_printf(m, "%s:%d HDCP version: ", connector->name,
 		   connector->base.id);
 	intel_hdcp_info(m, intel_connector);
 
-	return 0;
+out:
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return ret;
 }
 DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
