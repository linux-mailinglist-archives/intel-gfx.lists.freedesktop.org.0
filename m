Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F089DA2CF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFC210E9F4;
	Wed, 27 Nov 2024 07:09:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lUlt3SzI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D6A10E9F2;
 Wed, 27 Nov 2024 07:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732691340; x=1764227340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hMOZ3ht4CamTR9/PCfkKZO2SBSuj0vLzm/dUxOHPFyY=;
 b=lUlt3SzIXQKHpAsAuK6uTi9qxr2kTZZG+V1SJ4OzVtQgbXdcXp8K5D5d
 UIlj5KGZFXhGToUcvtF4bf2SIUXcccJGAQn7+/Q5AD/72Qr+DYLjlMndu
 DDYQaEshU7hmmrHFLz+XNNxJirIFCqdKREhigMk5k0KBDqeY9gp8xpUSs
 7Ft0KMcLWnjkPOkEQFcodYc4LR8frIbCDwUxTww6j3a67GU6e6CAnGnS6
 uZsdX3tvNl/SK+S6JoA4pkhv9+azpedIzoUQ1BSzFxlmjZK99ZOYJGSFf
 w4fD4n7hKO/6w2OSLlVeMp4cFjzw24R4jNeKMJvC6k9fdVIOUzbBkwQZm w==;
X-CSE-ConnectionGUID: i/HX9X64TiGfAA0StS/FAQ==
X-CSE-MsgGUID: q5WcHeaPRRu7uak5xLxmJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36667884"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36667884"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:09:00 -0800
X-CSE-ConnectionGUID: dO8/hfiNSFmZ1Aa3XaHLfw==
X-CSE-MsgGUID: Kb2yEBGQTJ20NS+VHnbC1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="96270376"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:08:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 3/7] drm/i915/vrr: Introduce new field for VRR mode
Date: Wed, 27 Nov 2024 12:41:32 +0530
Message-ID: <20241127071136.1017190-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
References: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
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
index 339e4b0f7698..dbf6402e58f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -913,6 +913,12 @@ void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
 
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
@@ -1286,6 +1292,7 @@ struct intel_crtc_state {
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
+		enum intel_vrrtg_mode mode;
 	} vrr;
 
 	/* Content Match Refresh Rate state */
-- 
2.45.2

