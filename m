Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788579C3A76
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1378A10E45C;
	Mon, 11 Nov 2024 09:10:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KbLBQGR4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B3010E452;
 Mon, 11 Nov 2024 09:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316199; x=1762852199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oxmFBzfaB2qOvQdEeLLdxWoHDWckDh42JKZoS76ii/0=;
 b=KbLBQGR4h3KyO9imhp/hJpF1HHRbs1ueshKHqOqK/lYJAjHRYcuKbpTK
 aPhLqeqB0TJQRMMMbY3xWU4jOWJcCtQFx0EB+uzaQWTRg3G8ENRUTCam6
 vgrx2RATammhPx/HaW5lLVRxA5CCeWusDtDWDyUlCiwITvaH26tO69ZGy
 QoivTG+L3IQqRfF1HbP9qlZ7yIWqWLjDjZVIVLMl2G2AczUcIcp+qlV/c
 35sfxkXEyHBtz3PwVe2UZmng4l64NJ8XoRLAA0G9dxkK3JVsJeAgZQ+eG
 Bvy7Dmeags3YN7jtKkdW+PXxUf1PuRHNwwwtQVYk+mQan1MaaOz8xf4yw A==;
X-CSE-ConnectionGUID: 8IwkBzBQTPudQIorHJghWw==
X-CSE-MsgGUID: AH4m2kFaRpO9tpGlHGjimw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052313"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052313"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:09:59 -0800
X-CSE-ConnectionGUID: 2v3unmJ8TpOGRMzsL/EK2g==
X-CSE-MsgGUID: 5MKORYJNT6ac0vxehZbEvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762545"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:09:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
Date: Mon, 11 Nov 2024 14:42:01 +0530
Message-ID: <20241111091221.2992818-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

VRR timing generator can be used in multiple modes: dynamic vrr, fixed
refresh rate and content matched refresh rate (cmrr).
Currently we support dynamic vrr mode and cmrr mode, so add a new member
to track in which mode the VRR timing generator is used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d3a1aa7c919f..a1b67e76d91c 100644
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

