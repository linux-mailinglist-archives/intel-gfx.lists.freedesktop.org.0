Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C8130498E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 21:08:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0EA389D4B;
	Tue, 26 Jan 2021 20:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6D989D1D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 20:08:22 +0000 (UTC)
IronPort-SDR: NNa5Nz6vSpLH7WEo7XASBN17sjUWQ1tgxZN94UbQhPWNBIiSQZB3z1u5VSkv5wAmrepOaua1Aj
 DL3YJ11BBiQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="177393092"
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="177393092"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 12:08:22 -0800
IronPort-SDR: w6JbOUV45NS0YZL+c1XxNEqyAJWpQmUXHc5FgEeONMg5iZ2DZrWCnfzQBXsUiIy0dCkEblbn9w
 II7uvOMBwXjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="573040965"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2021 12:08:21 -0800
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 12:08:03 -0800
Message-Id: <20210126200805.2499944-1-juston.li@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: update cp_irq_count_cached
 in intel_dp_hdcp2_read_msg()
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update cp_irq_count_cached when we handle reading the messages rather
than writing a message to make sure the value is up to date and not
stale from a previously handled CP_IRQ. AKE flow  doesn't always respond
to a read with a write msg.

E.g. currently AKE_Send_Pairing_Info will "timeout" because we received
a CP_IRQ for reading AKE_Send_H_Prime but no write occurred between that
and reading AKE_Send_Pairing_Info so cp_irq_count_cached is stale
causing the wait to return right away rather than waiting for a new
CP_IRQ.

Signed-off-by: Juston Li <juston.li@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index f372e25edab4..56a1a0ed20fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -442,8 +442,6 @@ static
 int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 			     void *buf, size_t size)
 {
-	struct intel_dp *dp = &dig_port->dp;
-	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
@@ -459,8 +457,6 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 	bytes_to_write = size - 1;
 	byte++;
 
-	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
-
 	while (bytes_to_write) {
 		len = bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
 				DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_write;
@@ -508,6 +504,8 @@ static
 int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 			    u8 msg_id, void *buf, size_t size)
 {
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	unsigned int offset;
 	u8 *byte = buf;
@@ -523,6 +521,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 	if (ret < 0)
 		return ret;
 
+	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
+
 	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
 		ret = get_receiver_id_list_size(dig_port);
 		if (ret < 0)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
