Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D43AD9FE6E8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:15:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D8C10E2C7;
	Mon, 30 Dec 2024 14:15:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nsp4seVK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 150CE10E4E9;
 Mon, 30 Dec 2024 14:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568120; x=1767104120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b1n8BAjHwYiHzngiJR7VD7IRmdctdxYZBc+T63vYiyY=;
 b=Nsp4seVKTvQpYFP1M9JvpFYB/RPmrjxJt/dCm6r/RcDWt41w74oKI44o
 VjauRHuhwr3Ez900io/KfyoS2E522R2XB8VUkUQZkBouQLdguXR6mGqF+
 IBWDmE3BKO1pM4KPNrKL6uPxCpUiLCpfFVPaR9qQClP1GSX99YDl/HvTY
 XU1qTnyP+F5BGTSb4WfkGfm3/SK14zNWDTcAH5oOHsaJemhrShJIVz02P
 HPq8VNV5XKEnnx+dnhRrq+0ko3uhejx4RC+W7/h5mlIrIqdtoFK5tTMV/
 /NxnNzVumXeqM87oaFekQx8NW9MYZ+9nn6me7TpiA8muf/o67P1CXKC6A A==;
X-CSE-ConnectionGUID: 7Ev9VdnvTbqDQ6MF11MHTg==
X-CSE-MsgGUID: S1efLrUmSOS6aoy/9cT8Zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39538405"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39538405"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:19 -0800
X-CSE-ConnectionGUID: VeWrJenORHmPLLyLIetxmA==
X-CSE-MsgGUID: g/Gi21ZSSfi+UHTLBDqsiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="101215310"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 5/6] drm/i915/display: add intel_encoder_is_hdmi()
Date: Mon, 30 Dec 2024 16:14:44 +0200
Message-Id: <e6bf9e01deb5d0d8b566af128a762d1313638847.1735568047.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735568047.git.jani.nikula@intel.com>
References: <cover.1735568047.git.jani.nikula@intel.com>
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

Similar to intel_encoder_is_dp() and friends.

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index eb9dd1125a4a..f230163226d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1968,6 +1968,19 @@ static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
 	}
 }
 
+static inline bool intel_encoder_is_hdmi(struct intel_encoder *encoder)
+{
+	switch (encoder->type) {
+	case INTEL_OUTPUT_HDMI:
+		return true;
+	case INTEL_OUTPUT_DDI:
+		/* See if the HDMI encoder is valid. */
+		return i915_mmio_reg_valid(enc_to_intel_hdmi(encoder)->hdmi_reg);
+	default:
+		return false;
+	}
+}
+
 static inline struct intel_lspcon *
 enc_to_intel_lspcon(struct intel_encoder *encoder)
 {
-- 
2.39.5

