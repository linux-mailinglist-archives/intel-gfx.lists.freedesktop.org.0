Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C438B7E84
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38C1112D7A;
	Tue, 30 Apr 2024 17:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GsVE1Zzw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 307BD112D76;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498220; x=1746034220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=POQTqjeQD7S7iWBbsEGY9PQk3TV+hseVmIuycsP0rgM=;
 b=GsVE1Zzwk2u6VE0UsWZ21FS35hldED+KaFGHju5WDKen6G+nud/1XSrj
 SJJyJCbfqtgJVqRfGrlI6hg0j2ziQ4dDSCcC4gPiws9jLiSpZjwcW33SI
 pMLA/ES946f7ZEAXoZcm6NTYZzUpUikgurNDAvtRQMuPhnTp/EUoNSJ7b
 yC1XzoTETBrBlGoQGLA/tykn2vwdqTxXstYcr9ZKNxdaLiWA6+Qa/+kkS
 nbhiCRIeIa8keLc8EH7v50k51Rz7Ox6+sgCEoWDdXcZfnD9HljcTgm+vW
 34SviyX1QLoP98FzbBuz2sCsdWTk1t7vNREdfQngJjZcfRIUpl5iMAYWW g==;
X-CSE-ConnectionGUID: AQq+JtjXRkuouD022L8GWg==
X-CSE-MsgGUID: 71caOPSaQhWiVZcmb14E3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741989"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741989"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
X-CSE-ConnectionGUID: jF5epQUDTDG3rw6PxDheSw==
X-CSE-MsgGUID: G/A/oEWbQ7StHy8w0/YvcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617825"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 05/19] drm/i915/xe2hpd: Properly disable power in port A
Date: Tue, 30 Apr 2024 10:28:36 -0700
Message-Id: <20240430172850.1881525-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: José Roberto de Souza <jose.souza@intel.com>

Xe2_HPD has a different value to power down port A.

BSpec: 65450
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9930fa7313e4..2fee024d642b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2900,17 +2900,28 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 		intel_cx0pll_enable(encoder, crtc_state);
 }
 
+static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (intel_encoder_is_c10phy(encoder))
+		return CX0_P2PG_STATE_DISABLE;
+
+	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
+		return CX0_P2PG_STATE_DISABLE;
+
+	return CX0_P4PG_STATE_DISABLE;
+}
+
 static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
-	bool is_c10 = intel_encoder_is_c10phy(encoder);
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Change owned PHY lane power to Disable state. */
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-					    is_c10 ? CX0_P2PG_STATE_DISABLE :
-					    CX0_P4PG_STATE_DISABLE);
+					    cx0_power_control_disable_val(encoder));
 
 	/*
 	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
-- 
2.34.1

