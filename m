Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAFF99FC21
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5BF10E62F;
	Tue, 15 Oct 2024 23:11:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLaiEnVh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E21510E62B;
 Tue, 15 Oct 2024 23:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033896; x=1760569896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BEjW3ZnAAMRPeBrwVo5lR3dSs+aRcw/H0NgKtd4Rmgo=;
 b=aLaiEnVh8Fnpk0jgfxUpcruk9w5NzK4U9NcSoLWtGDjo813dx4CXso7J
 6ur3RvGH4FN7OrYkBqROI3Gj+5LSDeOp97OLij81W0aX31ZSMKejGGYpB
 j3vD9fEBfuR3HLlonG255l079nIqRJQ6b+LIjgD33BTt76QR8cijRKHWX
 yCi9wE1hIqpmFJb6/mQxsvonvTE1qrzWD0pvBg86LPsdhwDlGDy+bZXzY
 +Jlj6Dxt8sVZqb3Sm2X3wa9Q3WhoBEptwhjhMeZjYFFjg6roANZt/31tY
 fAiSX2Sa6a6ZIgFAEl+e4omFrpBWyZxjhid59xD8Rui2gvnbNyP0jADvV g==;
X-CSE-ConnectionGUID: MweFBW6VQ5yxCdoribjnOQ==
X-CSE-MsgGUID: 1fz2iJeIThqGeXYRcLgN9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600792"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600792"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:35 -0700
X-CSE-ConnectionGUID: yqIvL9HHQi6Q1KPgaIHs2Q==
X-CSE-MsgGUID: CqAC/TF+QXK5xpUEkfsIkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120417"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:33 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3 3/7] drm/i915/xe3lpd: Include hblank restriction for xe3lpd
Date: Tue, 15 Oct 2024 16:11:20 -0700
Message-ID: <20241015231124.23982-4-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

hblank restriction now includes all of xe3.

v2: add additional definition instead of function, commit message typo
fix and update.
v3: restore lost conditional from v2.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h           | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..a99b41f258e4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -51,6 +51,10 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 			intel_de_rmw(display,
 				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
 				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
+		else if (DISPLAY_VER(display) >=30)
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
+				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d30459f8d1cb..fc30e0056b07 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3833,6 +3833,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
 #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
 #define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
+#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
-- 
2.45.0

