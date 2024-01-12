Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A62582BBEC
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 08:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC14B10EA80;
	Fri, 12 Jan 2024 07:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60E110EA80
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 07:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705045414; x=1736581414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X0Luayn117dQKrWPnpceTBKj2wP82BhluZecgTGd5cw=;
 b=CLnhkel98AnrHAY92hY5HDHbV4qMUCEJjFSPNgJZKHb3lFA88S6ZjYtl
 5mF/qrIsFpXD/WbJVpKa+Q0E6HT+BIqxSyUJIG9yPCdMz4P1MPxi2BAKY
 0kKcic7R8dX7fBnhif0GcLiG5GqxPsIHbeTP/GLh3MFJaJnMs8gq9Z7Sh
 m85oKKHPe4cPBevEBUeXM0nvRwyCMsDgHtVGHTxYSWbgFTYZztS4R9C8Q
 w6ZhwQCs71ecPX4SrzTUXMb5BFSFauWixHS6FTOroBjSpN+1fXqdEWpqY
 VRiATY1VupeBYevNJexF6gPlY2XoQ7CJrOLGLohwyTxTTrXKKnyZ7EYT1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5867002"
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; 
   d="scan'208";a="5867002"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 23:43:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; d="scan'208";a="17317586"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jan 2024 23:43:31 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915/hdcp: Remove additional timing for reading mst
 hdcp message
Date: Fri, 12 Jan 2024 13:11:16 +0530
Message-Id: <20240112074120.159797-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240112074120.159797-1-suraj.kandpal@intel.com>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
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
index 90b027ba3302..cde42b756f6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -561,13 +561,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 
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

