Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A491D12AA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 14:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4FB66EA1B;
	Wed, 13 May 2020 12:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2326EA17
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 12:29:49 +0000 (UTC)
IronPort-SDR: 6qXCNntgagFfv/sJ/4/8uJFmqp0zKUVME4GD1NTz0qUuWxP2IkAZYohaKT+LH0WPzew6S76m/q
 8PHVQoAE+KnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 05:29:49 -0700
IronPort-SDR: NtAYjRIuSmEKALbYPpImGFI3QWpxmR6nQWwYvqvY55aCfCW/XbN1CmEfnwpRooHbs7iT9EtBFD
 JdAv7sTZ9H5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="409672404"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 13 May 2020 05:29:48 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 17:48:45 +0530
Message-Id: <20200513121845.19437-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200513121845.19437-1-anshuman.gupta@intel.com>
References: <20200513121845.19437-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: No direct access to
 power_well desc
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

HDCP code doesn't require to access power_well internal stuff,
instead it should use the intel_display_power_well_is_enabled()
to get the status of desired power_well.
No functional change.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index d0a2bee9035a..409bd5d98a81 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -148,9 +148,8 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *intel_dig_port,
 
 static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
-	struct i915_power_well *power_well;
 	enum i915_power_well_id id;
+	intel_wakeref_t wakeref;
 	bool enabled = false;
 
 	/*
@@ -162,17 +161,10 @@ static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
 	else
 		id = SKL_DISP_PW_1;
 
-	mutex_lock(&power_domains->lock);
-
 	/* PG1 (power well #1) needs to be enabled */
-	for_each_power_well(dev_priv, power_well) {
-		if (power_well->desc->id == id) {
-			enabled = power_well->desc->ops->is_enabled(dev_priv,
-								    power_well);
-			break;
-		}
-	}
-	mutex_unlock(&power_domains->lock);
+	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	enabled = intel_display_power_well_is_enabled(dev_priv, id);
+	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 
 	/*
 	 * Another req for hdcp key loadability is enabled state of pll for
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
