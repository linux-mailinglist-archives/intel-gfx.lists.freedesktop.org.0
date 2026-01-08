Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7F1D02C85
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 13:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388DF10E709;
	Thu,  8 Jan 2026 12:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lFPQyTnD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B6B910E709;
 Thu,  8 Jan 2026 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767877064; x=1799413064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9nkRtWapGdAyFIFbVIQlhyM0C+UUVS1yNRVRa5+z8HY=;
 b=lFPQyTnDUAkOg5NEF7UhxbT54vpVlYfA2l5vkzES1dTA3LgK4t3LeuRB
 b7eEogoPPbQtOeIpgV7e2jc+zlpNmNopR17Ur+2GU81Lh0lBEbI61txQv
 oxG+kDg06TrxxKuhSk4xN58W3EBHkvgPXgR/AeZ3EvPqNPcNQ45LvB1Pj
 kDOn1M2O7n94F7Ir1DlEgCMhqyhq+WhvZE/Y++o/j+CO9oJuHtGlFE5CH
 oSH49VUi/6ueH7f5Ds8toq2Lf7fUT8g8ylQOdBp3LdFM6EoFRaRVUQUKY
 cZrqluzE+gMn784mXQiFkwKo8OQ9tmo938rrAcvqG5LbmxsK7xgA8ie5v A==;
X-CSE-ConnectionGUID: w0ct4ZfrShir1PiDbKbBxg==
X-CSE-MsgGUID: 0GqM9Ec+Ty+UzZkAEn9Jow==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80617950"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="80617950"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:57:44 -0800
X-CSE-ConnectionGUID: eC71ZbbQTiC2nFpkmnTdmA==
X-CSE-MsgGUID: tbwNL855QYKwqRWQztqUfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="208038822"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:57:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/2] drm/i915/vbt: Add edp pipe joiner enable/disable bits
Date: Thu,  8 Jan 2026 18:11:40 +0530
Message-ID: <20260108124141.1407760-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260108124141.1407760-1-ankit.k.nautiyal@intel.com>
References: <20260108124141.1407760-1-ankit.k.nautiyal@intel.com>
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

Add VBT support to enable/disable eDP Pipe Joiner feature.
The OEMs can choose to enable/disable the feature from VBT.
ARL - VBTs default this field to disabled.
PTL+ - VBTs default this field to enabled.

Bspec:20142
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_vbt_defs.h      | 1 +
 3 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ae0b922d5bc3..633a35153485 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1546,6 +1546,10 @@ parse_edp(struct intel_display *display,
 	if (display->vbt.version >= 251)
 		panel->vbt.edp.dsc_disable =
 			panel_bool(edp->edp_dsc_disable, panel_type);
+
+	if (display->vbt.version >= 261)
+		panel->vbt.edp.pipe_joiner_enable =
+			panel_bool(edp->pipe_joiner_enable, panel_type);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6b92f333e18b..356979fb9487 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -351,6 +351,7 @@ struct intel_vbt_panel_data {
 		bool low_vswing;
 		bool hobl;
 		bool dsc_disable;
+		bool pipe_joiner_enable;
 	} edp;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 57fda5824c9c..0dc13d080e8a 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -1109,6 +1109,7 @@ struct bdb_edp {
 	u16 edp_dsc_disable;					/* 251+ */
 	u16 t6_delay_support;					/* 260+ */
 	u16 link_idle_time[16];					/* 260+ */
+	u16 pipe_joiner_enable;					/* 261+ */
 } __packed;
 
 /*
-- 
2.45.2

