Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C013A84E3D3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B5C10E8A7;
	Thu,  8 Feb 2024 15:17:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iAisiSfb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F5B10E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405468; x=1738941468;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9BO49c2QKbwoIwKnIrAVVNVzoBsPJM2L5xJ8LEQNCCs=;
 b=iAisiSfbZdbDTsOaXU7et2x8fji2hgoLqtIv4PY7wKBOObzSLYY6rQvY
 TIHozSKr3o1o+y/oLYSNbnryHG4TEemqe63Ib2GHZHxLArgjPQSjwM4iV
 2oqG0BcWghVdnx28WAOftCcZe65PPtrO44qNtccatPgutPUNLjFJofNH4
 u/1w6mLAxcfSEC86g7xgBng/8Am6gkSXHpomKSJjXAnuqNkXWYMhoy6hi
 JLE1qgOrVzLC5rcyvooLqYh08rR/n2F/tubjauAcETAorAp5Hhu6SOW7n
 GTzHAENxR0eWScIoIRCOvUfM1lWV+xHIIUDE5hk3GI2fkdj96Zjv4B4Ve Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219257"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219257"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863664"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/13] drm/i915/hdcp: Use per-device debugs
Date: Thu,  8 Feb 2024 17:17:15 +0200
Message-ID: <20240208151720.7866-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Switch to per-device debugs in the hdcp code so we see at least which
device is involved. Should proably also print the connector/encoder/etc.
in there, but left that for the future.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 3a595cd433d4..9dff4bdfeec8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -36,8 +36,10 @@ static u32 transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
 	}
 }
 
-static void intel_dp_hdcp_wait_for_cp_irq(struct intel_hdcp *hdcp, int timeout)
+static void intel_dp_hdcp_wait_for_cp_irq(struct intel_connector *connector,
+					  int timeout)
 {
+	struct intel_hdcp *hdcp = &connector->hdcp;
 	long ret;
 
 #define C (hdcp->cp_irq_count_cached != atomic_read(&hdcp->cp_irq_count))
@@ -45,7 +47,8 @@ static void intel_dp_hdcp_wait_for_cp_irq(struct intel_hdcp *hdcp, int timeout)
 					       msecs_to_jiffies(timeout));
 
 	if (!ret)
-		DRM_DEBUG_KMS("Timedout at waiting for CP_IRQ\n");
+		drm_dbg_kms(connector->base.dev,
+			    "Timedout at waiting for CP_IRQ\n");
 }
 
 static
@@ -387,7 +390,8 @@ int hdcp2_detect_msg_availability(struct intel_connector *connector,
 			*msg_ready = true;
 		break;
 	default:
-		DRM_ERROR("Unidentified msg_id: %d\n", msg_id);
+		drm_err(connector->base.dev,
+			"Unidentified msg_id: %d\n", msg_id);
 		return -EINVAL;
 	}
 
@@ -421,7 +425,7 @@ intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
 		 * As we want to check the msg availability at timeout, Ignoring
 		 * the timeout at wait for CP_IRQ.
 		 */
-		intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);
+		intel_dp_hdcp_wait_for_cp_irq(connector, timeout);
 		ret = hdcp2_detect_msg_availability(connector, msg_id,
 						    &msg_ready);
 		if (!msg_ready)
-- 
2.43.0

