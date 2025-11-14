Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B82A2C5F4B2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC4110EB2C;
	Fri, 14 Nov 2025 20:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mu7cpjb5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C4810EB23;
 Fri, 14 Nov 2025 20:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763153624; x=1794689624;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=s1hYBnUOmBP7eQR/kqzwpoMvp9gDWqjgQdpVGLob5fQ=;
 b=mu7cpjb5PgFwdN7L+wt8CXf2neyyA7be/Zzi4STLpEfEaHZC4orT27df
 +/Lzgcdm37T1kbd876rgYDC6YnHYkpUroLI3W89hnwfL1U8cYzR7IZeMj
 EfnBszcpBSrXbptFfyxWnC4+yzVjx1Ib3oH4sll5Ud+ugcms2/wV5YDL6
 Y4b+dzuluayeUiSujN3Lx785tFsEJLL/jLg763rcvYoFdRcJffiIdv3aW
 rwkujdFRAwBIWL9sVUgbQY/MFNFmxkGG6mK2X4gJCYInEXADJCrKMHDDK
 JABEylowK9xcmUG5epuJC2NRguMBXFT8Q659KLbnux8Tn4y6cAbgq//1y w==;
X-CSE-ConnectionGUID: avfbpjasRv2vdkPlaB6YSw==
X-CSE-MsgGUID: shBOyuLdSqqYJhRmlpSjqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="67859913"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="67859913"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:44 -0800
X-CSE-ConnectionGUID: lP13r9PzQJiV3mftKyqX/Q==
X-CSE-MsgGUID: Mrd+k3ZiR2CcfwyIzJlMWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="227214230"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.50])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:40 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 14 Nov 2025 17:52:14 -0300
Subject: [PATCH v5 7/8] drm/i915/display: Move HAS_LT_PHY() to
 intel_display_device.h
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-xe3p_lpd-basic-enabling-v5-7-c183388367f4@intel.com>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.h         | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9affb6a53da4..2455ec826abe 100644
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
index 0820968e51b5..7659c92b6c3c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -42,6 +42,4 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 
-#define HAS_LT_PHY(display) ((display)->platform.novalake)
-
 #endif /* __INTEL_LT_PHY_H__ */

-- 
2.51.0

