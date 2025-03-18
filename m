Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4F7A66C7B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD6610E35F;
	Tue, 18 Mar 2025 07:47:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kD1/WYjv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9416010E1F0;
 Tue, 18 Mar 2025 07:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284073; x=1773820073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1M4iAvs/KZt+N5nAZnnfCMJJ29eKLvtbFtZ818PKszQ=;
 b=kD1/WYjvsbMmJ9Oss1XKmMJ80EfmkLlDTM/umiWt/9QQznbZ3Ez2FkPX
 goyOR9unectFkjPbAD6xffoRLrwsgfy4wKXo1hVWq+SxIP+TDoWuGu8F5
 japUJ0aQt1DVRTILk7Yus/8SKayQCqwWiBPI2O/YzY2Oacd96vZKtpFOT
 iqWSBY/QNXV6t65hN/rXbTP2oLbIQgx0VaQ3hh1EKu7+0bCNIFFxDlSdf
 x7UkqnEE5c6CGpxAdj369qR/wEu8a1VNI54zTY5hgcdsepHYDJ8SluRGP
 qLgicJcD2zPmiZUebTq8J3/EOxePJOXL/GnQvQ6OpKxl4kVyQDfZPOCzM g==;
X-CSE-ConnectionGUID: iegJ1k4GRha2nSJk/PFfRA==
X-CSE-MsgGUID: Vyj9EmUqRPyyjApmB2AesQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173803"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173803"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:52 -0700
X-CSE-ConnectionGUID: wsHPZc/gRKyhEzbVnmGfeA==
X-CSE-MsgGUID: CpJrHjzqSjWBKUtLiLUmAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681675"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/16] drm/i915/vrr: Set vrr.enable for VRR TG with fixed_rr
Date: Tue, 18 Mar 2025 13:05:33 +0530
Message-ID: <20250318073540.2773890-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
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

For platforms that enable VRR TG only for variable timings, the
VRR_CTL.VRR_ENABLE bit indicates VRR is active. For platforms that
always have VRR TG enabled, the VRR_CTL.VRR_ENABLE bit indicates VRR
is active only when not in fixed refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3f610e382883..66afa66c66af 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -630,6 +630,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
+	bool vrr_enable;
 
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
@@ -673,7 +674,12 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+
+	if (intel_vrr_always_use_vrr_tg(display))
+		crtc_state->vrr.enable = vrr_enable && !intel_vrr_is_fixed_rr(crtc_state);
+	else
+		crtc_state->vrr.enable = vrr_enable;
 
 	/*
 	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
-- 
2.45.2

