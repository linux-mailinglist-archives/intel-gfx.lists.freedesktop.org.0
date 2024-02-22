Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4CC85F214
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C44A10E899;
	Thu, 22 Feb 2024 07:46:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5BJ2yx5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0581410E73E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587984; x=1740123984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uq6wsqD0F61lpfvaPzZAUvqpr0tiKtxG0q+o4fELVAQ=;
 b=Z5BJ2yx5b6XZjK4LMvyvx/PnAOuU+XR34h+2v3HAhh+fBUQ6uq36Ej0x
 vPidJB3/xC+6mnYd1L8vqkYPzdxLGWA/uwN5sltEa7t7FU3kfyVN6aR2z
 dv5JFdv3xRnKeRQM3VPCE6256Q8GUjgdcynWuRlqiM/k1VjGUPD4ooK25
 BUwqlsPqny+xpUryFz4RljDjec7pe1U19Ik7TslydjdADS1UsC/nHpiv+
 qiPOKjPzEhDznbOYTuIICC/0V5jvYPsfRnBiDEXEAQhEdD4z7Q+8yCQyw
 GOcyuf4Trc/JcigTNR9TqtyGS4eX5MSiDZqEI9wj1swl1531l+yXt71rL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906053"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906053"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:46:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354163"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:46:08 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 08/13] drm/i915/hdcp: Remove additional timing for reading mst
 hdcp message
Date: Thu, 22 Feb 2024 13:13:49 +0530
Message-ID: <20240222074353.1568904-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222074353.1568904-2-suraj.kandpal@intel.com>
References: <20240222074353.1568904-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Now that we have moved back to direct reads the additional timing
is not required hence this can be removed.

--v2
-Add Fixes tag [Ankit]

Fixes: 3974f9c17bb9 ("drm/i915/hdcp: Adjust timeout for read in DPMST Scenario")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 553a88004cfb..dc5c671513c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -555,13 +555,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 
 		/* Entire msg read timeout since initiate of msg read */
 		if (bytes_to_recv == size - 1 && hdcp2_msg_data->msg_read_timeout > 0) {
-			if (intel_encoder_is_mst(connector->encoder))
-				msg_end = ktime_add_ms(ktime_get_raw(),
-						       hdcp2_msg_data->msg_read_timeout *
-						       connector->port->parent->num_ports);
-			else
-				msg_end = ktime_add_ms(ktime_get_raw(),
-						       hdcp2_msg_data->msg_read_timeout);
+			msg_end = ktime_add_ms(ktime_get_raw(),
+					       hdcp2_msg_data->msg_read_timeout);
 		}
 
 		ret = drm_dp_dpcd_read(aux, offset,
-- 
2.43.2

