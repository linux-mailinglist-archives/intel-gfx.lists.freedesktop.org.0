Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C98A1B88A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A24610E9A4;
	Fri, 24 Jan 2025 15:12:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZp+vv6z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2CB10E9A4;
 Fri, 24 Jan 2025 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731525; x=1769267525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=raosHNLFckxa/X/zZnL2BS3BBnJNC9fC9Dacw9ovcrM=;
 b=VZp+vv6zaVbms03YlM0LyDSzlpUIHTNUjX74EF/GAx8gBRe4YPLRPJS2
 fWc9pX1Gg9vwZ7WB4vsxJs3yJNkVrZM2/GqDaC3qM70r/N4TlfT4yycx3
 nc5cpLn/c09ScM0Liql+gQHz+cDsa22Wt1xPp7gR28yd1o8c5U7tiaeBJ
 6kt388NUxVz7Q3nZLLfCicv6fxJHk7VqAUepa6iwtfEdb8djwob7jBXWY
 cbQZG/2cdFJa1flBY5IBzuYVMQHEbdaEUzVzyvhP1tQYdlxsNaGCLf9HG
 VurUsZIjyW3PkfhgOdBTMvPcQGs49pjMzSB/703v3clv/Qp/aHa4y2cXx A==;
X-CSE-ConnectionGUID: z2Thg6WxTaiKqE3OF16G1Q==
X-CSE-MsgGUID: iPIL9sDtQse4Nxg3UI49ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177403"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177403"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:05 -0800
X-CSE-ConnectionGUID: 4EZQIDLQT6Cc37AivZ8rXw==
X-CSE-MsgGUID: T1/kXB6QSP+xLzoDkrPPoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221259"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:03 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/35] drm/i915/vrr: Introduce new field for VRR mode
Date: Fri, 24 Jan 2025 20:29:58 +0530
Message-ID: <20250124150020.2271747-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

