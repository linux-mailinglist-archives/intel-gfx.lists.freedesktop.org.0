Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 340E63EAA6C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 20:44:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74716E44F;
	Thu, 12 Aug 2021 18:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3EA96E44B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 18:44:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="301009235"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="301009235"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 11:44:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="461167973"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga007.jf.intel.com with ESMTP; 12 Aug 2021 11:44:43 -0700
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: seanpaul@chromium.org, anshuman.gupta@intel.com, ramalingam.c@intel.com,
 rodrigo.vivi@intel.com, Juston Li <juston.li@intel.com>
Date: Thu, 12 Aug 2021 11:44:25 -0700
Message-Id: <20210812184427.167689-2-juston.li@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210812184427.167689-1-juston.li@intel.com>
References: <20210812184427.167689-1-juston.li@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/3] drm/i915/hdcp: update
 cp_irq_count_cached in intel_dp_hdcp2_read_msg()
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

Update cp_irq_count_cached when reading messages rather than when
writing a message to make sure the value is up to date and not
stale from a previously handled CP_IRQ.

AKE flow  doesn't always respond to a read with a ACK write msg.
E.g. AKE_Send_Pairing_Info will "timeout" because we received
a CP_IRQ for reading AKE_Send_H_Prime but no write occurred between that
and reading AKE_Send_Pairing_Info so cp_irq_count_cached is stale
causing the wait to return right away rather than waiting for a new
CP_IRQ.

Signed-off-by: Juston Li <juston.li@intel.com>
Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index d697d169e8c1..1d0096654776 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -446,8 +446,6 @@ static
 int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 			     void *buf, size_t size)
 {
-	struct intel_dp *dp = &dig_port->dp;
-	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
@@ -463,8 +461,6 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 	bytes_to_write = size - 1;
 	byte++;
 
-	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
-
 	while (bytes_to_write) {
 		len = bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
 				DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_write;
@@ -530,6 +526,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 			    u8 msg_id, void *buf, size_t size)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
@@ -546,6 +544,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 	if (ret < 0)
 		return ret;
 
+	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
+
 	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
 		ret = get_receiver_id_list_size(dig_port);
 		if (ret < 0)
-- 
2.31.1

