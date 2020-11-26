Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D86C12C4FC3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167C96E84C;
	Thu, 26 Nov 2020 07:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545BA6E844;
 Thu, 26 Nov 2020 07:51:36 +0000 (UTC)
IronPort-SDR: iXF1XR06gMcwRpwepDFcq6707XGiyhimzmBIvqL3bXk/QVzVeh8znlMuSt/3vBLCIVsHIoQowu
 qZ4+g5/PQM+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="152084926"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="152084926"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:51:36 -0800
IronPort-SDR: jz4k0Xadq+qtVzZLUqohEotGiU+zEezycVrrfEiHD/gSto2lfawA5nwthoP0zoNR85iqt/yQk/
 U9HGQ9n9fR2Q==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="535652471"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:51:33 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:07:10 +0530
Message-Id: <20201126073722.19107-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126073722.19107-1-anshuman.gupta@intel.com>
References: <20201126073722.19107-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 06/18] drm/i915/hdcp: Move HDCP enc status
 timeout to header
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
Cc: jani.nikula@intel.com, seanpaul@chromium.org
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

Related: 'commit 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt
status change")'
Cc: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.h | 2 ++
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 293f72d1d215..6e6465b4ecfa 100644
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
@@ -1641,7 +1640,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 				    HDCP2_STATUS(dev_priv, cpu_transcoder,
 						 port),
 				    LINK_ENCRYPTION_STATUS,
-				    ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
+				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
 
 	return ret;
 }
@@ -1665,7 +1664,7 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
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
