Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A94A259D6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD5110E4B2;
	Mon,  3 Feb 2025 12:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUsS9MeU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA3C10E4B1;
 Mon,  3 Feb 2025 12:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738586998; x=1770122998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=raosHNLFckxa/X/zZnL2BS3BBnJNC9fC9Dacw9ovcrM=;
 b=AUsS9MeUJSJd6Lu/MR+TNtQKuZPRKqB3XcHjdbqKOVSPwMOhkbZi1CY8
 ylAuXLTSKNz60uML+iQ4xoAiAArkgTxTLjTh3Re+aZOsqF9+svMlXpGqQ
 7d5HX6S/pl1jG3zukTyj82s1f8Hq6Hr6KQJJLyO6Jwl3u0x4qQqWelda2
 uc0CZoAAmuJQDL9qv8TDbxvMrWWmue+pP3sZ0lBiBYZfu8SyxR21/I1Qe
 oLhPKuomiHlMrYvgik9pA3nKsrgotRo0C/z3Dj+Hp0fMD1JnLzwUBHIpW
 QO3ZKo5j6aT4QNP4MxjSgAOp3ACEAFJsnzAPjmSGT2wvGp6Id1AIIiWbh w==;
X-CSE-ConnectionGUID: mVasnVWjQdCZImYIfJK7sw==
X-CSE-MsgGUID: 4tgceaXDQSKYKTrkCKrQAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548025"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548025"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:58 -0800
X-CSE-ConnectionGUID: rPg1kzfvTb+ywT9hACtCtw==
X-CSE-MsgGUID: LAuvssxQS8+/NkX9YvXJAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528854"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/28] drm/i915/vrr: Introduce new field for VRR mode
Date: Mon,  3 Feb 2025 18:08:17 +0530
Message-ID: <20250203123840.3855874-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

The VRR timing generator can be used in multiple modes of operation:
dynamic refresh rate (VRR), content-matched refresh rate (CMRR), and
fixed refresh rate (Fixed_RR).

Currently, VRR and CMRR modes are supported, with Fixed_RR mode
forthcoming.

To track the different operational modes of the VRR timing generator,
introduce a new member 'mode' to the VRR struct.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cb51b7936f93..3195c9f33028 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -935,6 +935,12 @@ void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
 
 typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
 
+enum intel_vrrtg_mode {
+	INTEL_VRRTG_MODE_NONE,
+	INTEL_VRRTG_MODE_VRR,
+	INTEL_VRRTG_MODE_CMRR,
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1306,6 +1312,7 @@ struct intel_crtc_state {
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
+		enum intel_vrrtg_mode mode;
 	} vrr;
 
 	/* Content Match Refresh Rate state */
-- 
2.45.2

