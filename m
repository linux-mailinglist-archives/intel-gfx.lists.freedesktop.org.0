Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BB090E35F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA79D10E8F2;
	Wed, 19 Jun 2024 06:22:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VlomscE/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E937510E8F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778138; x=1750314138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyxaereafQbcUdc8/tYSP2KG3XE8cuWnIJ6sYep95D8=;
 b=VlomscE/GwjDuHbML1pcOQm/meImWnnKKYx3eZswnFKGJ16cBXasm/Ua
 vaB2cOED0gE5QuDcaS+B/Xne/NiKjofNAY7Q5tSTnBTLF5Azj2cgumOki
 KaUINOLZ0oH2YiEqJiIcDz6KmCbWR4anP0/alGxqQPCxfPkBUdOG6O0zP
 XwWR1C4iN7jAvXIbr/R5V/EvmFG7gHngrgMYH+VXLAU3Yl7TEMYd6ANN4
 eJO7dKTPqf6PKy9H1yaK2HrelGSC6DBKmWj4jne2thOP+V7+h9y5njrfJ
 RJmijEBgGN7ra3jI1mVBlZjm6lXg0UrP9s5GNbWsk/nrcrnVc51sCBD9s w==;
X-CSE-ConnectionGUID: i3o8cM78Tgez+/TUkmeDnw==
X-CSE-MsgGUID: uwPdTk58TkyK8bkJ91O4Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377402"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377402"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:18 -0700
X-CSE-ConnectionGUID: img8rsyvR86QeUElY0UxrA==
X-CSE-MsgGUID: r/AkKIwpTs6RfDcDEsZciA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41906035"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 11/11] drm/i915/psr: Modify dg2_activate_panel_replay to
 support eDP
Date: Wed, 19 Jun 2024 09:21:31 +0300
Message-Id: <20240619062131.4021196-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There are couple of bits in PSR2_CTL which needs to be written in case of
eDP Panel Replay

Bspec: 68920

v2: use boolean instead of assuming eDP Panel Replay mean Early Transport

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 03b90b06d64a..3df6d2ee3cd8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -948,6 +948,19 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+
+	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
+		u32 val = psr->su_region_et_enabled ?
+			LNL_EDP_PSR2_SU_REGION_ET_ENABLE : 0;
+
+		if (intel_dp->psr.req_psr2_sdp_prior_scanline)
+			val |= EDP_PSR2_SU_SDP_SCANLINE;
+
+		intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder),
+			       val);
+	}
 
 	intel_de_rmw(dev_priv,
 		     PSR2_MAN_TRK_CTL(dev_priv, intel_dp->psr.transcoder),
-- 
2.34.1

