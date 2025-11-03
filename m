Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB096C2D723
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543EC10E4A5;
	Mon,  3 Nov 2025 17:21:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4s0Z6XO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B2810E47D;
 Mon,  3 Nov 2025 17:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190482; x=1793726482;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=DIIYQuT/GRVGQ0LNhk2yWHtXqcbhyWMXlZKOdSaq6zg=;
 b=V4s0Z6XOucMSn1TIfykKeD88GywbD8Tm3TVPTTj6yPtnPrKxS9PJB67i
 unon3T5qM9TxC3J4DOLkwxxH/RRC0fPwJRnvkRdh0P42zEFeXyd1UR4N1
 opuQMjScYNWRLgMfOgi1iHwQDJF6o9Eb19E46oViykxqETrn5mbFovmQZ
 kpvatQB49gsCbaNq6bO2W6i7Jka12oGdg5+29+dEmzEMmqqZYCevjhaQe
 Tpua5wGr9o8LQctf1Tvzu0/AHHIeCz9l+QN3YuSj6fmTtD/qVh921SfPp
 qbgNYcUpzEK88IfzETTZVp6Uq8pJaZP+CCv+QWRiV3BEIqvj8ltxeyXHt w==;
X-CSE-ConnectionGUID: klLR/63BTuWphqPWVv4a1g==
X-CSE-MsgGUID: w88fx+mAQ3KgKv/bk14IFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64423937"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64423937"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:22 -0800
X-CSE-ConnectionGUID: 3BsJcodnQYyl0n8xw/yd/A==
X-CSE-MsgGUID: uhbmAubZQb+DwZS2yr/HXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606792"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:16 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:19 -0300
Subject: [PATCH v3 28/29] drm/i915/display: Move HAS_LT_PHY() to
 intel_display_device.h
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-28-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
X-Mailer: b4 0.15-dev
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

We will need to HAS_LT_PHY() that macro in code outside of LT PHY
implementation. Move its definition to intel_display_device.h.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.h         | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 4da4b1e3d817..df464eb0be7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -187,6 +187,7 @@ struct intel_display_platforms {
 #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
 #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9, 10))
+#define HAS_LT_PHY(__display)		((__display)->platform.novalake)
 #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
 #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 034c20c66baf..e52aadfbdf93 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -39,6 +39,4 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 
-#define HAS_LT_PHY(display) ((display)->platform.novalake)
-
 #endif /* __INTEL_LT_PHY_H__ */

-- 
2.51.0

