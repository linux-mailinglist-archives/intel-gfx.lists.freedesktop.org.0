Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BkgJkuscWk6LQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 05:49:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3235861C95
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 05:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB05810E8EA;
	Thu, 22 Jan 2026 04:49:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XK7MJfQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 584BE10E868;
 Thu, 22 Jan 2026 04:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769057351; x=1800593351;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/PEcGvs0ZSsbHM/eYYl/1cMkNIjwvjyD5R0Hi4Zg7Qs=;
 b=XK7MJfQkO+d7pBKLDXn2h8rgmoMMTnax08rfRAC5D3a5ad96rHHgXSrq
 qmBw3K1aua70DcvB/LnJXkHZQd0BP4QzakNBbSsncMpyWFIjSfg2ilmsy
 qBzJNmjhOuWN2SQS2c4sKzqiHBik6CMNDP/arUror1ZKTB1Ghtt0AvXtr
 ZeGD/+vAths1o5iKxlVl80uhA+MR++8X8wXc71CSxILwVGd4IfsDler+i
 MpnPLea+m8Rl9aesfXFiqIEO36SvSfNXGLqIDT61N177p0zjFR0CXqm/p
 bH24XLvAL5eTQ88kgU7ZhHxdNgn4utAIAg/1i6NpstUUlQdIF6MjXCb02 g==;
X-CSE-ConnectionGUID: wSCqEtGRS7STQlTLQ0G7Pw==
X-CSE-MsgGUID: SdqxTF4bT0u5uF1rL+LjyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70200387"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="70200387"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 20:49:11 -0800
X-CSE-ConnectionGUID: x7VYZ/lPQkKXlE6smt5YfA==
X-CSE-MsgGUID: an7uftsVQcamfw2WuP0a2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="211077441"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 21 Jan 2026 20:49:09 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/2] drm/i915/cx0: Rename intel_clear_response_ready flag
Date: Thu, 22 Jan 2026 10:18:59 +0530
Message-Id: <20260122044859.753682-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260122044859.753682-1-suraj.kandpal@intel.com>
References: <20260122044859.753682-1-suraj.kandpal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3235861C95
X-Rspamd-Action: no action

Rename the non static intel_clear_response_ready_flag to
intel_cx0_clear_response_ready_flag so that we follow the
naming standards of non static function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  4 ++--
 drivers/gpu/drm/i915/display/intel_lt_phy.c  |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ff74f64eb970..6a471c021c0e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -128,8 +128,8 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, struct
 	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
 }
 
-void intel_clear_response_ready_flag(struct intel_encoder *encoder,
-				     int lane)
+void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
+					 int lane)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
@@ -156,7 +156,7 @@ void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 		return;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 }
 
 int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
@@ -223,7 +223,7 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 		return -ETIMEDOUT;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
@@ -234,7 +234,7 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	if (ack < 0)
 		return ack;
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	/*
 	 * FIXME: Workaround to let HW to settle
@@ -296,7 +296,7 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 		return -ETIMEDOUT;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
@@ -326,7 +326,7 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 
 	/*
 	 * FIXME: Workaround to let HW to settle
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 347fdbc0af73..1d4480b8bf39 100644
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
index b4b281ef258b..04f63bdd0b87 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1053,7 +1053,7 @@ static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
 	 * This is the time PHY takes to settle down after programming the PHY.
 	 */
 	udelay(150);
-	intel_clear_response_ready_flag(encoder, lane);
+	intel_cx0_clear_response_ready_flag(encoder, lane);
 	intel_lt_phy_clear_status_p2p(encoder, lane);
 
 	return 0;
-- 
2.34.1

