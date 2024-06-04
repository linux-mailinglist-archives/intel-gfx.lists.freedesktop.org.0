Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142578FB74F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1A010E511;
	Tue,  4 Jun 2024 15:31:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KSv210Z/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 542D710E51C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515081; x=1749051081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TSU/pCDX/SMTqNVUJ9tHm34687i+GYzbrfeAA3rDUyU=;
 b=KSv210Z/zpG4FF5poYRDYl/pmz5Y4MgFNaWwZ5SB5XBMxudc2SdnyARs
 G1qFC4brqNWTB6z5groAcNTzWTvbaGqRRS8u3ATBAHaSoPzgh43qbekXN
 e9IWI0Uk0b9Z4ptUYx4uxawMEqOic0JXwQL7paoixRW0CukkAs3dH2JrG
 HVbK1oQOHKbumyjQog0wgS0yOaiXJGdHnaPr2UrKSpmOMQhNvN6kyxLlQ
 WZW+MiReJrdSzcCJ/jG3R8HDbW9rRTSmrtxWgeSAdujzt1Vrk3hzT91yq
 JyeiDRmzlqzkKTRoyefLMBe/nTx+mmVbaUn8DFhi/Bd2y00dJc0bDa2j1 w==;
X-CSE-ConnectionGUID: JRYYPosnQIaJ+OwpMUoBOg==
X-CSE-MsgGUID: KpNFzl+nTAKFbSR+cSkqxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24733625"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="24733625"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:21 -0700
X-CSE-ConnectionGUID: lsVpclYgSQisxL5ReJMC4g==
X-CSE-MsgGUID: giHODLBMQoyWuz/AGyn6Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41828070"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 61/65] drm/i915: pass dev_priv explicitly to TGL_DP_TP_CTL
Date: Tue,  4 Jun 2024 18:26:19 +0300
Message-Id: <3d3e2b732ec9372cf6b1ae44b25342179b028b1a.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TGL_DP_TP_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 515996c49f5a..135c2e7964fc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2184,7 +2184,8 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		return TGL_DP_TP_CTL(tgl_dp_tp_transcoder(crtc_state));
+		return TGL_DP_TP_CTL(dev_priv,
+				     tgl_dp_tp_transcoder(crtc_state));
 	else
 		return DP_TP_CTL(encoder->port);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f330953e71cf..c1547ecdc352 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4022,7 +4022,7 @@ enum skl_power_gate {
 #define _DP_TP_CTL_B			0x64140
 #define _TGL_DP_TP_CTL_A		0x60540
 #define DP_TP_CTL(port) _MMIO_PORT(port, _DP_TP_CTL_A, _DP_TP_CTL_B)
-#define TGL_DP_TP_CTL(tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
+#define TGL_DP_TP_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
 #define  DP_TP_CTL_ENABLE			(1 << 31)
 #define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
 #define  DP_TP_CTL_MODE_SST			(0 << 27)
-- 
2.39.2

