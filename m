Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B3678A5CD
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2653510E218;
	Mon, 28 Aug 2023 06:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3757710E218
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 06:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693204542; x=1724740542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kef5uF+PT5J7PdOjW4wZvf883qGaKfAKahwAwCspaks=;
 b=T++jxfWbXvKjh6QaY5M5V/3kXgqMXkJHFeTZm5sQp8zs8mNQUfpXFbyL
 i3LZm/B5NaECFRrAQJcomko39d/f/KI9mLMxgLAKIRuls0QYWMSQVo4Q6
 uXxXA1+9BfLMe1Uxfl2CA68dwJUmqK75f98+2oIPxbQM1S2d2aEh7fCpF
 0YTOUMbPQxjKCa7u9I1F3AsrYb42Ue2+dnC9aPHmUss0wOtHNflrdfZLg
 jhM+YC4qPtO+ajnXuAjy27hBjoebrzPvlxp2H71wMi8FyxdyZxQpEgmnw
 Z1k9eM2yobcBx9hXSeSk8OXMhgMh02mH9hnOGeWOkurkmXKDzaSjwf7/N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="461395942"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="461395942"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:35:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="911930511"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="911930511"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2023 23:35:40 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 12:04:01 +0530
Message-Id: <20230828063401.600414-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230828063401.600414-1-suraj.kandpal@intel.com>
References: <20230828063401.600414-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/hdcp: Adjust timeout for read
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
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
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

