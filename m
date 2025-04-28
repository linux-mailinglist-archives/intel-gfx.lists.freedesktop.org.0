Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDF1A9E81F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADCA10E3A2;
	Mon, 28 Apr 2025 06:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Laqu30ON";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D4D10E39B;
 Mon, 28 Apr 2025 06:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821394; x=1777357394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=upM18nCcEhnsLrbzXu6N6ads9/UToDjR21GVlbIV6yA=;
 b=Laqu30ONR2oldt5+akpKg/C07uyeBvx7P6SWcF5aefgXd0byUIRQUANA
 H81i1/VeqYr7DoRb/F9WbWLcRfHNUTQ7mTcr3ylZSJxdLjtebp6BcnlrC
 cZxQVgOOqz84PJJg5fnbchjlyNX8yX7ABGZTUkHPz14a8WrIH5GylDKGU
 s5MaSeGyoaETDSgWnZm2slZxl0PL+DQrGlSyxFB1f8PLJhuc5hWY32c9j
 e7ajoFzoboRKfXqX8SPDPPX34zSt8/YBL1jfsmpyD6xTWj1IKNJI2xbYX
 sWa+5MS5nH+6CQdo4Yy1W3lJqfYqaK3iqUtqfdJP3T6BRBGKPlY0aJoWi Q==;
X-CSE-ConnectionGUID: 6wW0hXMjQbGILNwbnHKcTg==
X-CSE-MsgGUID: MHO1E7znTOOsfEZd96QOSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204189"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204189"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:14 -0700
X-CSE-ConnectionGUID: Pi03kDHNTMWdZ8CCKkE/vA==
X-CSE-MsgGUID: lGLkxbjvT0+ZqBGsAcpgHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231228"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 09/15] drm/i915/vrr: Write DC balance params to hw registers
Date: Mon, 28 Apr 2025 11:50:52 +0530
Message-ID: <20250428062058.2811655-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

Write DC Balance parameters to hw registers.

--v2:
- Update commit header.
- Separate crtc_state params from this patch. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 28 ++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index bc99701be2b5..54b91c2a0a87 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -627,6 +627,23 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 		}
 	}
+
+	if (HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.vmin - 1);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.vmax - 1);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.max_increase);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.max_decrease);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.guardband);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.slope);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
+			       crtc_state->vrr.dc_balance.vblank_target);
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -637,6 +654,17 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	if (HAS_VRR_DC_BALANCE(display) && old_crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder), 0);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
+	}
+
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       trans_vrr_ctl(old_crtc_state));
-- 
2.48.1

