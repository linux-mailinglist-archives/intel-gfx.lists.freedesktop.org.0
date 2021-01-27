Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D81A30537A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 07:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D5E6E578;
	Wed, 27 Jan 2021 06:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D946E578
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 06:50:57 +0000 (UTC)
IronPort-SDR: GQyEc+3PTLdd/xnDou/K5na26KGQhhpSHSLXgmBlo+CqdgklNZ7Bkr6KsSokvjaRT73StZmuJt
 AynBuKH67XBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="241555730"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="241555730"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 22:50:56 -0800
IronPort-SDR: IHIfejJTaiICoFR5CA9psfkeXeyeQNHXpw5I8A8aaQrGvWyi4B1xTPUV/nWqP4UmkKgEmfnnTW
 k++YfBBiXSvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="573175074"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2021 22:50:55 -0800
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 22:50:31 -0800
Message-Id: <20210127065034.2501119-1-juston.li@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/hdcp: Disable the QSES check
 for HDCP 1.4 over MST
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

The HDCP 1.4 spec does not require the QUERY_STREAM_ENCRYPTION_STATUS
check, it was always a nice-to-have. After deploying this across various
devices, we've determined that some MST bridge chips do not properly
support this call for HDCP 1.4 (namely Synaptics and Realtek).

I had considered creating a quirk for this, but I think it's more
prudent to just disable the check entirely since I don't have an idea
how widespread support is.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210106223909.34476-1-sean@poorly.run #v1

Changes in v2:
-Rebased on -tip
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index f372e25edab4..4dba5bb15af5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -722,16 +722,6 @@ static bool intel_dp_mst_get_qses_status(struct intel_digital_port *dig_port,
 	return reply.auth_completed && reply.encryption_enabled;
 }
 
-static
-bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
-				  struct intel_connector *connector)
-{
-	if (!intel_dp_hdcp_check_link(dig_port, connector))
-		return false;
-
-	return intel_dp_mst_get_qses_status(dig_port, connector);
-}
-
 static int
 intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 				     bool enable)
@@ -805,7 +795,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
 	.toggle_signalling = intel_dp_hdcp_toggle_signalling,
 	.stream_encryption = intel_dp_mst_hdcp_stream_encryption,
-	.check_link = intel_dp_mst_hdcp_check_link,
+	.check_link = intel_dp_hdcp_check_link,
 	.hdcp_capable = intel_dp_hdcp_capable,
 	.write_2_2_msg = intel_dp_hdcp2_write_msg,
 	.read_2_2_msg = intel_dp_hdcp2_read_msg,
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
