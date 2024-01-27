Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2865883EBA6
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 08:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614BC10E5AA;
	Sat, 27 Jan 2024 07:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C158910E5A2
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jan 2024 07:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706339928; x=1737875928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=++fOTEBDwwOmRje/mChqIo+x6DgKfuJGPIaHRPJO7+Y=;
 b=cgvFtpVYFxrnNX0uoCgj9pj/WMSOyKWTcbWREpemqhLEfcS0B7Zbhgz7
 JdpTCu7CKbIc6iAh4EmpjTtwCwIgM318F/hTpChZhZA1GsQCuA81XIV+Q
 c3JJ5D7FK0/T7zR5chnSnM0gyp1PeZ81Wlw860zQOxsAliFc9ngXMVA7X
 lbN5B7jvwRSNDT0TczF64kX74VRoOUJRnVf32pV52ZGK7zBOc1Zj+H2bg
 YtO8S1sDl/5JbUVeqkLQQ524A8NSxLWVIJ2vHtOIOiJ1C7a+XU5xuNhIs
 ADHax9yiHHbq9ym0xyhBr1rXx+99gUVCqS8AQXq3Ix6aZQOACmm/7XbFP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="2528291"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2528291"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 23:18:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2970489"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa004.jf.intel.com with ESMTP; 26 Jan 2024 23:18:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915/hdcp: Remove additional timing for reading mst
 hdcp message
Date: Sat, 27 Jan 2024 12:46:37 +0530
Message-Id: <20240127071640.850392-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240127071640.850392-1-suraj.kandpal@intel.com>
References: <20240127071640.850392-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 4979c9e25cf0..21c503566fdd 100644
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

