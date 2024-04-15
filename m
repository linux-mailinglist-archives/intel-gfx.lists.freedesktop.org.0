Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2558A4A05
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B20110E85E;
	Mon, 15 Apr 2024 08:14:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0P4Bjmo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4D01122D4;
 Mon, 15 Apr 2024 08:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168852; x=1744704852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rmZXSfo+2gUBO8H9cYskK+TmOFyBh8iX7fIo7R3e+CA=;
 b=b0P4BjmoHPUtra9/NLBXh9zqpiS3LVCiqKE+5dj3kpTnrHhTeG9DSOKi
 jj0lu8tBfn711l2Egy5kWzpmTM5Km+UWFenarnNpBW0DuR+qHh+xPTHrZ
 P2Zw/yDX+MoXCvW4PvW3fZ1NbZ8/buN8XJJndzD9gJsMQwGVc4nrksFSB
 0HcbeqAl3kubgWHPfeyDD5dcwBdOXy8H0mONn95i/3TS0aWfrYC/kGLtv
 V4WzDfCV3f7h9Iada/6dx13GGxNemGyChtmygyYu9z/B1UeeOYHYN8NnV
 DyTusITNV0hOi3uEKC/O6Crc7eW7u8dPknKKMIJEB/B7tTDwiYb3HoEvi w==;
X-CSE-ConnectionGUID: oVlsgiTVRSOqYHrIIIZ8Wg==
X-CSE-MsgGUID: Jvhx0wLJS6KcrubsZEUvLw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096385"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096385"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:12 -0700
X-CSE-ConnectionGUID: j0aRLptTTnmPMUBa/5iTBw==
X-CSE-MsgGUID: xa1x6CBYSiiE0nQfN1Qq5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400278"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:10 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 07/21] drm/i915/xe2hpd: Properly disable power in port A
Date: Mon, 15 Apr 2024 13:44:09 +0530
Message-Id: <20240415081423.495834-8-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5cf5d9b59708..33a612892d94 100644
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
2.25.1

