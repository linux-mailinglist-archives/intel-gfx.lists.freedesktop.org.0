Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A43087A72E2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 08:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFE510E159;
	Wed, 20 Sep 2023 06:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B40710E440
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 06:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695191887; x=1726727887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uNtfojnACZRhlg3/XYV0/xOqofAwlazDLIrQ02V2wMM=;
 b=G6JQiUcb5N8439s/z28upAT7nfln0U2DHqEak3Tf7h5wl6G6cu3N2EbS
 zVCNY9X+oK/XrgWqRtM72OkAVPRYWq5J57dkbbZgzPqcC5l9BIkv9Uzjf
 nJIzpnAVb3ythQoYuc+b2/eT6YsUt7O2VPSRKl7tr1ha8sEXKI+KcKiqN
 bKm2ZelOnK0hD45WH+WDCThuOq7baZcutl+XHX3mF8DKzcKB230tzCZxq
 EhHK2XqT9qhIzAXXbp0hdx2Fxi7ylhqwrN82fUvNOMnfhc35H8CbOwPoo
 tUhNduYLTyMoUVkzck1d2ByOGQA9kQ3L1Y3Mw5oQxzpm2GtTMgR/f3VQ2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="379028805"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="379028805"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 23:38:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836728159"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="836728159"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Sep 2023 23:38:05 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 12:06:10 +0530
Message-Id: <20230920063611.242942-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230920063611.242942-1-suraj.kandpal@intel.com>
References: <20230920063611.242942-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Move checks for gsc health
 status
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move checks for gsc components required for HDCP 2.2
to work into intel_hdcp_gsc.c. This will also help
with XE refactor on HDCP's side.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 +-------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  1 +
 3 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 8cca4793cf92..c89da3568ebd 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -173,14 +173,8 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
 	if (intel_hdcp_gsc_cs_required(i915)) {
-		struct intel_gt *gt = i915->media_gt;
-		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
-
-		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
-			drm_dbg_kms(&i915->drm,
-				    "GSC components required for HDCP2.2 are not ready\n");
+		if (!intel_hdcp_gsc_check_status(i915))
 			return false;
-		}
 	}
 
 	/* MEI/GSC interface is solid depending on which is used */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index d753db3eef15..d355d610bc9f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -17,6 +17,20 @@ bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 	return DISPLAY_VER(i915) >= 14;
 }
 
+bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt = i915->media_gt;
+	struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
+
+	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
+		drm_dbg_kms(&i915->drm,
+			    "GSC components required for HDCP2.2 are not ready\n");
+		return false;
+	}
+
+	return true;
+}
+
 static int
 gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
 			  struct hdcp2_ake_init *ake_data)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index cbf96551e534..eba2057c5a9e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -23,5 +23,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_out_len);
 int intel_hdcp_gsc_init(struct drm_i915_private *i915);
 void intel_hdcp_gsc_fini(struct drm_i915_private *i915);
+bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
-- 
2.25.1

