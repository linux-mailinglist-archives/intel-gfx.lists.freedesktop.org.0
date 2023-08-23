Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD444785050
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 08:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABAE10E350;
	Wed, 23 Aug 2023 06:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E6C10E2BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 06:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692770473; x=1724306473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RbRbHTggXTMl7ml9v5nSsqn/GDGIND6oel1w79ThS38=;
 b=ZZllQtWskubdKfl7EouaMi4rfWkOrhFeJGpWVB0a9U0ER/WLVt07ozLQ
 sdTpIP5UH+I91zHTnrW7vqrfLn+3zcp0VV45mEnOGApzrJqbs9A0Zzbh0
 BiVYfP98VRAC/tWr2CeUKuqGrccnx0rheGZwz6Ml2O479O3MHJbUsLCSJ
 k7oWBi3mmIRtUzii0kgqJ5SmiDeFG2EAaWres9e5q+5BvGmOFU6VWN1MM
 g+w8YDA6r27tunmVsDkj3ReNqLiJMZChBPqKnIUDR89sj5sf9Vdku4xSV
 HOtjVzfnWVsFYIh9mRavlz2J4ZCFKw6Jt8qlQYJ2czAx+b+GwihkcLQeN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="364254023"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364254023"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 23:01:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="860199711"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="860199711"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2023 23:01:11 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 11:28:22 +0530
Message-Id: <20230823055821.460045-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823055821.460045-1-suraj.kandpal@intel.com>
References: <20230823055821.460045-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/hdcp: Adjust timeout for read
 in DPMST Scenario
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
Cc: uma.shakar@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For dpmst hdcp scenario increase the message timeout based
on the number of ports connected as each port needs to be
validated and each will take the prescribed amount of time
for the respective msg_id and total timeout will be
original_timeout * num_ports.

--v2
-Add justification for Adjusting the timeout [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index df68fd8f2eed..b0cfe759d3e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -560,9 +560,15 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		      DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_recv;
 
 		/* Entire msg read timeout since initiate of msg read */
-		if (bytes_to_recv == size - 1 && hdcp2_msg_data->msg_read_timeout > 0)
-			msg_end = ktime_add_ms(ktime_get_raw(),
-					       hdcp2_msg_data->msg_read_timeout);
+		if (bytes_to_recv == size - 1 && hdcp2_msg_data->msg_read_timeout > 0) {
+			if (intel_encoder_is_mst(connector->encoder))
+				msg_end = ktime_add_ms(ktime_get_raw(),
+						       hdcp2_msg_data->msg_read_timeout *
+						       connector->port->parent->num_ports);
+			else
+				msg_end = ktime_add_ms(ktime_get_raw(),
+						       hdcp2_msg_data->msg_read_timeout);
+		}
 
 		ret = drm_dp_dpcd_read(aux, offset,
 				       (void *)byte, len);
-- 
2.25.1

