Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA1A985357
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 08:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B966510E028;
	Wed, 25 Sep 2024 06:59:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HrMLNPAh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616D110E028
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 06:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727247579; x=1758783579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3cl0/Q8fR9N6KX6Bi7HEaPyBT9ZqbuJVfhNn2vvM1To=;
 b=HrMLNPAhkgbHKqXV9P6m6FV+3xBq7QLmj4QnQ4a4VdZ/ABgVGghAuOjm
 ZoDmItVfTWlVa9yJ0kwrTHxPHiDKKeeXvPivUfoOvISf2+3l0u4wgSgtZ
 dcr61fmwoYNms5Nv0b4IhbRY8cky1rB5/F7bsSXuohOdzn3B6aZUVMFX0
 riPNGTOCB0aH9J9xki4eaiF2/8oQHC8Wqw7925ur9l4BJ6QuCMnQwNWB7
 6xrBcuxWMqh0zI/cI1iMrzCcimarh708mv5kNKGHfKETc3c2ExLemd32c
 9hC3aVZkzPQi33Gm+eZKvXIxUIuP1E+KoHnRMp/UmxI/X24yxhm4juPPV A==;
X-CSE-ConnectionGUID: bSd7VUGRQry5PAw1iF2FdA==
X-CSE-MsgGUID: oh3416yvRPO93Db14QFzPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="48809159"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="48809159"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 23:59:24 -0700
X-CSE-ConnectionGUID: SiiV4Pg8QEu5g/YH4P4Mug==
X-CSE-MsgGUID: lkh8lbsQRYCRDUqXZE60vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71548371"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 24 Sep 2024 23:59:22 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Retry first read and writes to downstream
Date: Wed, 25 Sep 2024 12:26:58 +0530
Message-ID: <20240925065658.1269767-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Retry the first read and write to downstream at least 10 times
with a 50ms delay if not hdcp2 capable. The reason being that
during suspend resume Dock usually keep the HDCP2 registers inaccesible
causing AUX error. This wouldn't be a big problem if the userspace
just kept retrying with some delay while it continues to play low
values content but most userpace applications end up throwing an error
when it receives one from KMD. This makes sure we give the dock
and the sink devices to complete its power cycle and then try HDCP
authentication.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 26 +++++++++++++++++------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2afa92321b08..5f2383c219e8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1512,7 +1512,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	} msgs;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	size_t size;
-	int ret;
+	int ret, i;
 
 	/* Init for seq_num */
 	hdcp->seq_num_v = 0;
@@ -1522,13 +1522,25 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = shim->write_2_2_msg(connector, &msgs.ake_init,
-				  sizeof(msgs.ake_init));
-	if (ret < 0)
-		return ret;
+	for (i = 0; i <= 10; i++) {
+		if (!intel_hdcp2_get_capability(connector)) {
+			msleep(50);
+			continue;
+		}
+
+		ret = shim->write_2_2_msg(connector, &msgs.ake_init,
+					  sizeof(msgs.ake_init));
+		if (ret < 0)
+			continue;
+
+		ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
+					 &msgs.send_cert, sizeof(msgs.send_cert));
+		if (ret < 0)
+			continue;
+		else
+			break;
+	}
 
-	ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
-				 &msgs.send_cert, sizeof(msgs.send_cert));
 	if (ret < 0)
 		return ret;
 
-- 
2.43.2

