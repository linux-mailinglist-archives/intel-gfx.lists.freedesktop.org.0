Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DA2D1C499
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 04:43:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E696F10E5C8;
	Wed, 14 Jan 2026 03:43:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i9HPuSz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB5E10E5C8;
 Wed, 14 Jan 2026 03:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768362191; x=1799898191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KnA9flBSLWzukpYlk2YO9J8R2pJRd2WHH+X+u1ANOSE=;
 b=i9HPuSz8lJsyl51PvMIT+qX2DrrMhgn0KxxhTMRnjDTvin7j8efCs2QV
 X92PowcX3xJSzuN2ehDtxibTM0nPkfOAP0L6b6U9V3kvYbzd75aQKvWpl
 JFShwGTISpFsf8TM7V5XTYTrL6FJ4UgcKM970xqexfTKbQfli9AS7AwlC
 GS88UyAaUJlf72XaeL/jpCO2ddOZy2wYF7UfFRSZJmcXgb/w96ectV6Y1
 93aqJcTEvfXc+xCWSx0lYtb7lPhfvzliVeFvrGY/8qzjNj+OfntdDtq63
 hAeZ7/rc7e0ZegF/uqUG7Z9IfpJJcYwYjhB6yAtoiD4OMnloihF7vY4Fu A==;
X-CSE-ConnectionGUID: F/UPnHKXSV2sMlVXsPF/qQ==
X-CSE-MsgGUID: w+LjV4khTU6MO50fA0PVRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="68664597"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="68664597"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 19:43:11 -0800
X-CSE-ConnectionGUID: NCrTTdYERvaxU1QbuiPpjg==
X-CSE-MsgGUID: TPL8GAy9SGajoWMzLFwWqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="204833758"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 13 Jan 2026 19:43:09 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 3/3] drm/i915/cx0: Rename intel_clear_response_ready flag
Date: Wed, 14 Jan 2026 09:12:59 +0530
Message-Id: <20260114034259.466605-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114034259.466605-1-suraj.kandpal@intel.com>
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
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

Rename the non static intel_clear_response_ready_flag to
intel_cx0_clear_response_ready_flag so that we follow the
naming standards of non static function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  4 ++--
 drivers/gpu/drm/i915/display/intel_lt_phy.c  |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 00c7fa9040ee..716b5108b4c4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -127,8 +127,8 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, struct
 	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
 }
 
-void intel_clear_response_ready_flag(struct intel_encoder *encoder,
-				     int lane)
+void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
+					 int lane)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
@@ -155,7 +155,7 @@ void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 		return;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 }
 
 int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
@@ -222,7 +222,7 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 		return -ETIMEDOUT;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
@@ -233,7 +233,7 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	if (ack < 0)
 		return ack;
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	/*
 	 * FIXME: Workaround to let HW to settle
@@ -295,7 +295,7 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 		return -ETIMEDOUT;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
@@ -325,7 +325,7 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	/*
 	 * FIXME: Workaround to let HW to settle
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index ae98ac23ea22..87d3bdaca3ec 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -25,8 +25,8 @@ struct intel_dpll_hw_state;
 struct intel_encoder;
 struct intel_hdmi;
 
-void intel_clear_response_ready_flag(struct intel_encoder *encoder,
-				     int lane);
+void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
+					 int lane);
 bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
 			  struct intel_dpll *pll,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 6cdae03ee172..e174ca011d50 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1106,7 +1106,7 @@ static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
 	 * This is the time PHY takes to settle down after programming the PHY.
 	 */
 	udelay(150);
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 	intel_lt_phy_clear_status_p2p(encoder, lane);
 
 	return 0;
-- 
2.34.1

