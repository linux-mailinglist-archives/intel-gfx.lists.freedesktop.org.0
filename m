Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B1684480C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0033310FC95;
	Wed, 31 Jan 2024 19:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC87610FC90
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706729711; x=1738265711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dkZAalOTSLA/yDEVX9bvzYMqSoYjiBWuye+omPkKl/o=;
 b=e5ktd1oybSYsbTa0rqL/s2EQbXoz/iY4ymPlZu9Gx7MnhcKjje6G7dYs
 E9mZ4/iJU07DOJ29Fp6hMJlRIG5EYxtYA3GL9OHu9pfC6Rtp1VPSWey0H
 zMhMV+NkqtWOgQKy817LXu0dERy3WiZ68/I+1iaGa2syDD+tOKKUleQnz
 TLieaCeG1iNRbgIuLf6S3yl95lM0n7n1zvkCULJIbdubvMO07pTMOoewp
 sm2rMaj5aYnPkIbgJBAsa6GTpwQUHc8ae4hVLVvjKFsYu/lK3d08042zM
 3zpOCUamFOkpYrhbYlKEnZI1EaUFdbIL2QC5B3j13G6pi8vmi6sG86zll Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="467936208"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="467936208"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:34:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822686275"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="822686275"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2024 11:34:51 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/10] drm/i915/hdcp: Remove additional timing for reading mst
 hdcp message
Date: Thu,  1 Feb 2024 01:02:38 +0530
Message-Id: <20240131193240.938405-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193240.938405-1-suraj.kandpal@intel.com>
References: <20240131193240.938405-1-suraj.kandpal@intel.com>
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
index 56019b29fb49..6d28119f33fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -549,13 +549,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 
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
2.25.1

