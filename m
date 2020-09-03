Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F2125C0E2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 14:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D28D6E9DF;
	Thu,  3 Sep 2020 12:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903C46E9E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 12:24:14 +0000 (UTC)
IronPort-SDR: uDDuQXNxetY6lI0ucpuMU6GKroIJi9OOmA9IpkpBfaXZV8emLB3wx6db/OcW+w8jtdm6foGXEF
 LZDZp7UaRkpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="219116026"
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="219116026"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 05:24:14 -0700
IronPort-SDR: 1aBEU+hSXB7OnxeNwK6z43g0fstlfV+rK8JrTucUF/sYKkP31eBg1EuIpZLW2yUMRRhvX5G8F4
 v5YqrwNQjZGg==
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="478034612"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 05:24:12 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Sep 2020 17:42:33 +0530
Message-Id: <20200903121235.22760-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200903121235.22760-1-anshuman.gupta@intel.com>
References: <20200903121235.22760-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/hdcp: Move HDCP enc status timeout
 to header
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

DP MST stream encryption status requires time of a link frame
in order to change its status, but as there were some HDCP
encryption timeout observed earlier, it is safer to use
ENCRYPT_STATUS_CHANGE_TIMEOUT_MS timeout for stream status too,
it requires to move the macro to a header.
It will be used by both HDCP{1.x,2.x} stream status timeout.

Related: 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt
status change")
Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.h | 2 ++
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 1d5026bb45a4..f401fdaa7336 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -23,7 +23,6 @@
 #include "intel_connector.h"
 
 #define KEY_LOAD_TRIES	5
-#define ENCRYPT_STATUS_CHANGE_TIMEOUT_MS	50
 #define HDCP2_LC_RETRY_CNT			3
 
 static
@@ -762,7 +761,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (intel_de_wait_for_set(dev_priv,
 				  HDCP_STATUS(dev_priv, cpu_transcoder, port),
 				  HDCP_STATUS_ENC,
-				  ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+				  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
 		drm_err(&dev_priv->drm, "Timed out waiting for encryption\n");
 		return -ETIMEDOUT;
 	}
@@ -809,7 +808,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
 	if (intel_de_wait_for_clear(dev_priv,
 				    HDCP_STATUS(dev_priv, cpu_transcoder, port),
-				    ~0, ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+				    ~0, HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
 		drm_err(&dev_priv->drm,
 			"Failed to disable HDCP, timeout clearing status\n");
 		return -ETIMEDOUT;
@@ -1662,7 +1661,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 				    HDCP2_STATUS(dev_priv, cpu_transcoder,
 						 port),
 				    LINK_ENCRYPTION_STATUS,
-				    ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
+				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
 
 	return ret;
 }
@@ -1686,7 +1685,7 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 				      HDCP2_STATUS(dev_priv, cpu_transcoder,
 						   port),
 				      LINK_ENCRYPTION_STATUS,
-				      ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
+				      HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
 	if (ret == -ETIMEDOUT)
 		drm_dbg_kms(&dev_priv->drm, "Disable Encryption Timedout");
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index bc51c1e9b481..b912a3a0f5b8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#define HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS	50
+
 struct drm_connector;
 struct drm_connector_state;
 struct drm_i915_private;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
