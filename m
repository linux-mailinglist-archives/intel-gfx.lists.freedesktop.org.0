Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69C7C42192
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F81910EBC5;
	Sat,  8 Nov 2025 00:07:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/+f8Gvb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE7A10EBC2;
 Sat,  8 Nov 2025 00:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560425; x=1794096425;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=UJfF+8JpAPiI2aSU/kTpE1EiCJ2rinu6y4FDvstKpfk=;
 b=c/+f8GvbD6FwuzpvbN1pknh9+cCg5gu9sVRuTeS/5+QEDYRmX7xx9DJP
 vy+prokkLWdGTwY+aOjyS7P2cxdTbYdtVwgaN2i71xMC5Xj4FEOkeghtf
 J4Oq0QYRc+U3SgHtvdJfwsiHEpSCrHhiyA4GyfaFeQ0MywdBd7X7/JpMn
 HB/5BrCPWkibBNzLvA9g6ulSlZmvbG7X8IOuoWkEzaOpu66dn9GTj+xGM
 tdFZBuheNxR3TQs5OowLIiGfx9XyNXIEQf4YYF+YzztZi3wMQKkPoOdxc
 9GUrIia2p8u0Xwmu1lDE+8f/NICO/K1Y0Uy5Oqx5moUXBIGRRKiJM4zAm g==;
X-CSE-ConnectionGUID: Urv8QjGATY++ETErpxJPaQ==
X-CSE-MsgGUID: of0aRVLrQWyPwgjYZTnzJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621286"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621286"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:07:05 -0800
X-CSE-ConnectionGUID: EL1T8BLLT/W8iVEyaUkIKA==
X-CSE-MsgGUID: B/mBv+g+QlKm3ilTh8SWUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822655"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:07:02 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Nov 2025 21:05:42 -0300
Subject: [PATCH v4 09/11] drm/i915/display: Use platform check in HAS_LT_PHY()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-9-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
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

