Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB391C2D720
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:21:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81B410E496;
	Mon,  3 Nov 2025 17:21:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFfKiZDi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761C510E487;
 Mon,  3 Nov 2025 17:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190476; x=1793726476;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=GxIM85xuewmjCGiGYL9YlpDjwMFoWBgQDFjXrZnW0xs=;
 b=JFfKiZDiQ2TzgEyRFk4XMyR1Umt2022STND+XmDo9cqXBy6E+HHvcl63
 XOC3Xp4RhqP7sT8TVgiBBuJp9hTOtWPV9x3k+gTTMVjv9HX48TheFgNPd
 f+hIVgjYA/pkZyF3IHE4XGbd1M3MOG8xuRqbbRtsWvsi99zwpzYGFQNjM
 XEburLwlbkLIH9voBcxvTlZphCiGWyVftiLMLDBC4IZDZzqYzouq/XAqv
 xP0aUZimKl7n/MbN3dQaC0G892aeXSUzyGjsUz5zzwjLmOOjHZsQFqwOD
 vGGDBtj+ZxAkjCj0C2QLz3uNgEGnJ6kBB/SHYLwsAA6pAJmDRh+jeFybD A==;
X-CSE-ConnectionGUID: WQP4ktdxTfeEZ19NjRCKcg==
X-CSE-MsgGUID: /eG3T+rVRVSkUN3gm/wU+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310175"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310175"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:16 -0800
X-CSE-ConnectionGUID: 9KJCbnrhRSmZC7udaGzcIA==
X-CSE-MsgGUID: 7UbOG8UzS46Oj+McbVthHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606774"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:12 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:18 -0300
Subject: [PATCH v3 27/29] drm/i915/display: Use platform check in HAS_LT_PHY()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-27-00e87b510ae7@intel.com>
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

NVL uses the Lake Tahoe PHY for display output and the driver recently
added the macro HAS_LT_PHY() to allow selecting code paths specific for
that type of PHY.

While NVL uses Xe3p_LPD as display IP, the type of PHY is actually
defined at the SoC level, so use a platform check instead of display
version.

Bspec: 74199
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index a538d4c69210..034c20c66baf 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -39,6 +39,6 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 
-#define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
+#define HAS_LT_PHY(display) ((display)->platform.novalake)
 
 #endif /* __INTEL_LT_PHY_H__ */

-- 
2.51.0

