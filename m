Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A794C99BAC
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E9B10E50D;
	Tue,  2 Dec 2025 01:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DAWX1uV8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F6110E505;
 Tue,  2 Dec 2025 01:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638599; x=1796174599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2X4KiNOi1/yF0bL8Crr9XbeWuf4ILFxtkBYMFGRRd1o=;
 b=DAWX1uV8bamRUqNkTehvLlO+fE4fVkVJSwjtS5tMQ4uZqtEIliPyR8+/
 T4h3281DYX6do0iQmwe6h6Rjy5rmk5olASalCGWolIFaXR7hogqJ2rSQg
 FRn/8Zy2gYgXUS5PfX200mk9PCJ1rOjgv+fCCQ+4Tv7CwhskyrVczYQgs
 jgJdB3KWlFBuXv+5XE9pbdPEjmiKo/HDTcBKX7zETMPbQK5UOG3P5C20Q
 3s1LYJK6TnCq9u0z7K12u4m5m0sRitbwKPQsRyDuDfv8O/liAM0s8k5BI
 cfmG4K4adUTKbG/9PpcPzjehupT4loW6IhDtfVcflW4tfT4XVOuJixn4c w==;
X-CSE-ConnectionGUID: T75ACObqS2uyB9rnDykqAw==
X-CSE-MsgGUID: 5haMZf4GRdmccAgg0xVS/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186554"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186554"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:19 -0800
X-CSE-ConnectionGUID: CK7KJrhaSUWLSVcmt1T8Fg==
X-CSE-MsgGUID: GbphbJcHQbOi8hfOGKUXDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927929"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:19 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 7/8] drm/i915/display: Move HAS_LT_PHY() to
 intel_display_device.h
Date: Mon,  1 Dec 2025 17:23:05 -0800
Message-ID: <20251202012306.9315-8-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251202012306.9315-1-matthew.s.atwood@intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

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

