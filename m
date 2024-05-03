Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EE98BAC72
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC1B1128D8;
	Fri,  3 May 2024 12:26:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLVqg7YO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 388971128D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739160; x=1746275160;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7ZfQEL3ls4v8siFiywqzOmhWSme4p3Qp/Ytz3mxtTnY=;
 b=MLVqg7YOrDS8ipAU2zFVExmto5uXGOoqinl9BQ0YwdEEB0/JRNwsFPVC
 2XtTRgSeDr9/F7GfpcJFAtZWVWDdNOQuYTynqxYwdv6wDqOUw8cV0/pD1
 otvnfejsTmE0HsrknegBOzjGF4fYPOfSftlhfadIqJdtZfMAoXupdsrzH
 e/LwtGCZr4hsH6oiNERKnFubEaahqsX2WmQSzKPVdK1Zae6Ux4PU+pf7s
 0ZaD3IBgNNTMmOH86C3lTkQAea3CZgUWvS2InFEUJ8oqu4lzijOyZAWgY
 CVq574O2n47x55sVAMQlcxL6MFlY6si31h80Bl+UOQkuRIhmF8LgBDmEZ Q==;
X-CSE-ConnectionGUID: hCOjcdvWRjOuqZQY1hbg4A==
X-CSE-MsgGUID: FmozCihtSeCtLOgK5FzD+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372782"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372782"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:00 -0700
X-CSE-ConnectionGUID: 1aEBQBQCTyOB1LVPf+7e9A==
X-CSE-MsgGUID: ZaTN2DzQQ+iMbLZHXrQ/UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463804"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 24/35] drm/i915/bios: Define VBT block 25 (SDVO LVDS PPS)
 contents
Date: Fri,  3 May 2024 15:24:38 +0300
Message-ID: <20240503122449.27266-25-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define the contents of VBT block 25 (SDVO LVDS PPS).

Not 100% sure about the order of the fields as this is not
documented in the VBT spec anymore, but this order matches
what is included as part of the power sequencing SDVO commands
(struct sdvo_panel_power_sequencing). Also the real world
VBT data I have looks OK with this definition.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 8fe2ded884e3..c6d03905593d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -972,6 +972,22 @@ struct bdb_sdvo_lvds_pnp_id {
 	struct bdb_edid_pnp_id pnp_id[4];
 } __packed;
 
+/*
+ * Block 25 - SDVO LVDS PPS
+ */
+
+struct sdvo_lvds_pps {
+	u16 t0; /* power on */
+	u16 t1; /* backlight on */
+	u16 t2; /* backlight off */
+	u16 t3; /* power off */
+	u16 t4; /* power cycle */
+} __packed;
+
+struct bdb_sdvo_lvds_pps {
+	struct sdvo_lvds_pps pps[4];
+} __packed;
+
 /*
  * Block 27 - eDP VBT Block
  */
-- 
2.43.2

