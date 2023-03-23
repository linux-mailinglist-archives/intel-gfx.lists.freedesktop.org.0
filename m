Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF346C5CC3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 03:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D9810E429;
	Thu, 23 Mar 2023 02:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A45A10E426;
 Thu, 23 Mar 2023 02:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679539401; x=1711075401;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1AHXG44UOQjZsncumy0t39SSXC111nmL+zTuBgiNHsk=;
 b=R1atrTNHciXHKP0mM7Pu26Mo7nsrN+fUTsWst35TePO1Uo+GOMuHGbzG
 MCtT3VKMvKyvpdRwlfkiBJjlIFjvoIqOLcEg0Qyhdm6HGlSnAwclr3egp
 X3wM4oGaHYfa5yaeUamuwSbGErBIpMYUHEYDJmu7KQaVCG+oLY++/86O+
 37fD4Qlsz4CPLm/5zKaF+OTp0Cc6TF8yJQP+qCDkIv55rUg9loMrudPsu
 MwgsP1C5P1tbdVyUO1IMiyLCRHW42pTw/yC7HYcJvh1NzS8Uk6t6e33eV
 VpBb/luZgogCNSoWu2G1VGbkHFUFu7eewMHvzphlDM8uUZZOwZBB8Vv/c g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="323227240"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="323227240"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 19:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="682147049"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="682147049"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga002.jf.intel.com with ESMTP; 22 Mar 2023 19:43:20 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 19:43:19 -0700
Message-Id: <20230323024319.4119472-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/pxp: limit drm-errors or warning on
 firmware API failures
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
Cc: , intel.com@freedesktop.org, dri-devel@lists.freedesktop.org,
	Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MESA driver is creating protected context on every driver handle
creation to query caps bits for app. So when running CI tests,
they are observing hundreds of drm_errors when enabling PXP
in .config but using SOC fusing or BIOS configuration that cannot
support PXP sessions.

The fixes tag referenced below was to resolve a related issue
where we wanted to silence error messages, but that case was due
to outdated IFWI (firmware) that definitely needed an upgrade and
was, at that point, considered a one-off case as opposed to today's
realization that default CI was enabling PXP in kernel config for
all testing.

So with this patch, let's strike a balance between issues that is
critical but are root-caused from HW/platform gaps (louder drm-warn
but just ONCE) vs other cases where it could also come from session
state machine (which cannot be a WARN_ONCE since it can be triggered
due to runtime operation events).

Let's use helpers for these so as more functions are added in future
features / HW (or as FW designers continue to bless upstreaming of
the error codes and meanings), we only need to update the helpers.

NOTE: Don't completely remove FW errors (via drm_debug) or else cusomer
apps that really needs to know that content protection failed won't
be aware of it.

v2: - Add fixes tag (Trvtko)
v3: - Break multi-line drm_dbg strings into separate drm_dbg (Daniele)
    - Fix couple of typecasting nits (Daniele)
v4: - Unsuccessful PXP FW cmd due to platform configuration shouldn't
      use drm_WARN_once (Tvrtko), Switched to use drm_info_once.

Fixes: b762787bf767 ("drm/i915/pxp: Use drm_dbg if arb session failed due to fw version")
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    |  3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 77 +++++++++++++++----
 3 files changed, 67 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
index ae9b151b7cb7..6f6541d5e49a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
@@ -18,6 +18,9 @@
 enum pxp_status {
 	PXP_STATUS_SUCCESS = 0x0,
 	PXP_STATUS_ERROR_API_VERSION = 0x1002,
+	PXP_STATUS_NOT_READY = 0x100e,
+	PXP_STATUS_PLATFCONFIG_KF1_NOVERIF = 0x101a,
+	PXP_STATUS_PLATFCONFIG_KF1_BAD = 0x101f,
 	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
 };
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 448cacb0465d..7de849cb6c47 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -74,7 +74,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
 
 	ret = pxp_wait_for_session_state(pxp, ARB_SESSION, true);
 	if (ret) {
-		drm_err(&gt->i915->drm, "arb session failed to go in play\n");
+		drm_dbg(&gt->i915->drm, "arb session failed to go in play\n");
 		return ret;
 	}
 	drm_dbg(&gt->i915->drm, "PXP ARB session is alive\n");
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index d9d248b48093..a2846b1dbbee 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -19,6 +19,37 @@
 #include "intel_pxp_tee.h"
 #include "intel_pxp_types.h"
 
+static bool
+is_fw_err_platform_config(u32 type)
+{
+	switch (type) {
+	case PXP_STATUS_ERROR_API_VERSION:
+	case PXP_STATUS_PLATFCONFIG_KF1_NOVERIF:
+	case PXP_STATUS_PLATFCONFIG_KF1_BAD:
+		return true;
+	default:
+		break;
+	}
+	return false;
+}
+
+static const char *
+fw_err_to_string(u32 type)
+{
+	switch (type) {
+	case PXP_STATUS_ERROR_API_VERSION:
+		return "ERR_API_VERSION";
+	case PXP_STATUS_NOT_READY:
+		return "ERR_NOT_READY";
+	case PXP_STATUS_PLATFCONFIG_KF1_NOVERIF:
+	case PXP_STATUS_PLATFCONFIG_KF1_BAD:
+		return "ERR_PLATFORM_CONFIG";
+	default:
+		break;
+	}
+	return NULL;
+}
+
 static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 				    void *msg_in, u32 msg_in_size,
 				    void *msg_out, u32 msg_out_max_size,
@@ -307,15 +338,22 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 				       &msg_out, sizeof(msg_out),
 				       NULL);
 
-	if (ret)
-		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
-	else if (msg_out.header.status == PXP_STATUS_ERROR_API_VERSION)
-		drm_dbg(&i915->drm, "PXP firmware version unsupported, requested: "
-			"CMD-ID-[0x%08x] on API-Ver-[0x%08x]\n",
-			msg_in.header.command_id, msg_in.header.api_version);
-	else if (msg_out.header.status != 0x0)
-		drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n",
-			 msg_out.header.status);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send tee msg init arb session, ret=[%d]\n", ret);
+	} else if (msg_out.header.status != 0) {
+		if (is_fw_err_platform_config(msg_out.header.status)) {
+			drm_info_once(&i915->drm,
+				      "PXP init-arb-session-%d failed due to BIOS/SOC:0x%08x:%s\n",
+				      arb_session_id, msg_out.header.status,
+				      fw_err_to_string(msg_out.header.status));
+		} else {
+			drm_dbg(&i915->drm, "PXP init-arb-session--%d failed 0x%08x:%st:\n",
+				arb_session_id, msg_out.header.status,
+				fw_err_to_string(msg_out.header.status));
+			drm_dbg(&i915->drm, "     cmd-detail: ID=[0x%08x],API-Ver-[0x%08x]\n",
+				msg_in.header.command_id, msg_in.header.api_version);
+		}
+	}
 
 	return ret;
 }
@@ -347,10 +385,21 @@ void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32 session_id)
 	if ((ret || msg_out.header.status != 0x0) && ++trials < 3)
 		goto try_again;
 
-	if (ret)
-		drm_err(&i915->drm, "Failed to send tee msg for inv-stream-key-%d, ret=[%d]\n",
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send tee msg for inv-stream-key-%u, ret=[%d]\n",
 			session_id, ret);
-	else if (msg_out.header.status != 0x0)
-		drm_warn(&i915->drm, "PXP firmware failed inv-stream-key-%d with status 0x%08x\n",
-			 session_id, msg_out.header.status);
+	} else if (msg_out.header.status != 0) {
+		if (is_fw_err_platform_config(msg_out.header.status)) {
+			drm_info_once(&i915->drm,
+				      "PXP inv-stream-key-%u failed due to BIOS/SOC :0x%08x:%s\n",
+				      session_id, msg_out.header.status,
+				      fw_err_to_string(msg_out.header.status));
+		} else {
+			drm_dbg(&i915->drm, "PXP inv-stream-key-%u failed 0x%08x:%s:\n",
+				session_id, msg_out.header.status,
+				fw_err_to_string(msg_out.header.status));
+			drm_dbg(&i915->drm, "     cmd-detail: ID=[0x%08x],API-Ver-[0x%08x]\n",
+				msg_in.header.command_id, msg_in.header.api_version);
+		}
+	}
 }

base-commit: da2f18fbe9bca96a24a134d0f371b15d104fbf59
-- 
2.39.0

