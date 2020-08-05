Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2C123CA64
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 13:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DA26E546;
	Wed,  5 Aug 2020 11:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455A26E546
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 11:57:54 +0000 (UTC)
IronPort-SDR: Y0cz4IPaZW7XT0TnTCPOLaWCCRdOu8PL6TSN6M8azGOSyXvcip/PMXCUYHsP+1NB+8CHFEBbbW
 7YWT2Reu95Jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="151737574"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="151737574"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 04:57:53 -0700
IronPort-SDR: rjGjEPk23MPXmyhOLW6YAEkIYGManle/yi5FI2nbxxwyqM3zmd03pPNuLAm3urb4ycsy0NrqmE
 NYD00uV0qHuQ==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467440751"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 04:57:52 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 17:15:21 +0530
Message-Id: <20200805114521.867-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200805114521.867-1-anshuman.gupta@intel.com>
References: <20200805114521.867-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/hdcp: No direct access to
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

v2:
- used with_intel_runtime_pm instead of get/put. [Jani]
v3:
- rebased.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index a1e0d518e529..e76b049618db 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -148,9 +148,8 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 
 static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->power_domains;
-	struct i915_power_well *power_well;
 	enum i915_power_well_id id;
+	intel_wakeref_t wakeref;
 	bool enabled = false;
 
 	/*
@@ -162,17 +161,9 @@ static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
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
+	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
+		enabled = intel_display_power_well_is_enabled(dev_priv, id);
 
 	/*
 	 * Another req for hdcp key loadability is enabled state of pll for
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
