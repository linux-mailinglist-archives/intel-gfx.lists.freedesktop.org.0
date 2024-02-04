Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B99D6848BF1
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 08:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8381120F3;
	Sun,  4 Feb 2024 07:48:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bRoXRjQB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D521120FC
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707032934; x=1738568934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M0z68KDGq+jz4nNwvy9c8Cv0SVxQ81oIV0U6LFINNNg=;
 b=bRoXRjQBca94iLlFnPIRtuZGNpbMJtmxtJxhRqzSO5MXokogMpkr++Bt
 AF4MiW1RVCNQkvTnybWrBjikT1veng8glGCxbPoo+01xTrkwV5GFQMwrs
 +Ffp3g4vcjvkX+VG8kQ8nKs2ktrrdse3vI/8LB+SQo+V7asjIjAUPNcuq
 7u1y09Zca4waC0lzr6StqptDOZv8/ZXd2XEfF2HHVHnrYTjmrUvUka7Zq
 Dh7oZ+w06wBSuDuq2SkV6Z4eCvozYap53j9HmgHqwkID1dBxOsK9lyekE
 KEMgSk3PwwNcAzJJpcGtnP+YT2iYStpzpxphZW2bQF7/m/S8U0kwP+9Ob Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="279242"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="279242"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2024 23:41:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5067687"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 03 Feb 2024 23:41:47 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 07/11] drm/i915/hdcp: Remove additional timing for reading mst
 hdcp message
Date: Sun,  4 Feb 2024 13:09:32 +0530
Message-Id: <20240204073936.1135848-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204073936.1135848-1-suraj.kandpal@intel.com>
References: <20240204073936.1135848-1-suraj.kandpal@intel.com>
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
index da9094307c94..d992da10a590 100644
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

