Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 113CF986D61
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C7710EAAD;
	Thu, 26 Sep 2024 07:16:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JMswHQCw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152BD10EAA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 07:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727334998; x=1758870998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dTMBNgGw7qdMdrvDS6hQaa3/zpCDw1fdRsdptWsXG0I=;
 b=JMswHQCwcXNL+qABUrblJgIA8TVW/PCC/4VD7Yw1cg+Vkl8TrtVjh7wY
 jnIAtisUQuviAV+uN8n8f7ognrXJFrKdU6umaOxBP82oUkZLTKNRVS71k
 mP8lUMaUetcOy4cOfKtrX53ONZlqYWm1Euy8X2lymO8LfOgpouMEcrMjh
 v9/h2C2VYCRCFCXB27lqUtrVDTtw494ukNIXyKDkXsM7C7Db5ruh6LrS+
 AIV/xiJ0jUJynj1P0XSronACl7e4IWcXoqfMtWpVNZex4iCCSfwSM7SBL
 G63LU89xOZ8cbRdFIQX+8W8zA6ZCPbcx2RlLmy4jgBPYNw+lRzrUPcYCO w==;
X-CSE-ConnectionGUID: LbIHy9uSThW5UzbLlAk71A==
X-CSE-MsgGUID: zEFb6SaaSG+hcTogs8CDwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="25924357"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="25924357"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:16:37 -0700
X-CSE-ConnectionGUID: ga4uMcchRZOLgbGVzvpYmg==
X-CSE-MsgGUID: FtS5FZjESS2c1A7YMMu93A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="76853057"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 26 Sep 2024 00:16:36 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Retry first read and writes to downstream
Date: Thu, 26 Sep 2024 12:44:01 +0530
Message-ID: <20240926071400.1406949-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240925065658.1269767-1-suraj.kandpal@intel.com>
References: <20240925065658.1269767-1-suraj.kandpal@intel.com>
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
with a 50ms delay if not hdcp2 capable(dock decides to stop advertising
hdcp2 capability for some reason). The reason being that
during suspend resume Dock usually keep the HDCP2 registers inaccesible
causing AUX error. This wouldn't be a big problem if the userspace
just kept retrying with some delay while it continues to play low
values content but most userpace applications end up throwing an error
when it receives one from KMD. This makes sure we give the dock
and the sink devices to complete its power cycle and then try HDCP
authentication.

--v2
-Add more details in comment [Jani]
-fix looping condition [Jani]
-optimize loop exit condition [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 24 ++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2afa92321b08..46b6f30f9776 100644
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
@@ -1522,13 +1522,23 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = shim->write_2_2_msg(connector, &msgs.ake_init,
-				  sizeof(msgs.ake_init));
-	if (ret < 0)
-		return ret;
+	for (i = 0; i < 10; i++) {
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
+		if (ret > 0)
+			break;
+	}
 
-	ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
-				 &msgs.send_cert, sizeof(msgs.send_cert));
 	if (ret < 0)
 		return ret;
 
-- 
2.43.2

