Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70508BAC71
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F1B1128E9;
	Fri,  3 May 2024 12:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kjdUgio8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653DC1128E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739157; x=1746275157;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tDpu2mbyqJpfip2btq74MtuvO8VJ+3XX5ae/2qiiI5M=;
 b=kjdUgio8/A/05YYpt+xvR7iH75pr1NKejfbnwM1C/Xghj5L86eVeIyXt
 TB49zHNEUUajwBKQwCNex73WenO9xx5EBs4Sy38b5WXUn3nttdvl7l6UR
 Lwgq3FexVMk0fW+ImGClbieBdi47Zl9+UpeKhTdxNbPjHn/QyQoMgzj5t
 GHp1Rxaw9fPFi+BRFRAErv3OALqYqMYvjjrbndUFrFN9L2digICrNgBJ1
 /GoLEhYQMZVRS/wZiUo03B7mYE2wqFI6KNWIuQTGkpIo/g04DKD+oIQsq
 cYohlspUeKAksUCRlcgwfhXbiE312jf95zsL3P+5dk9YRrHZIfahd26Hd Q==;
X-CSE-ConnectionGUID: NWGpqP+oS0G1Tzc9WG5FMw==
X-CSE-MsgGUID: yxQf1sVJRcqC8qG53MA2ag==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372779"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372779"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:57 -0700
X-CSE-ConnectionGUID: oJTuYaocSbiL/VRLaM8B1w==
X-CSE-MsgGUID: bmxko20EQwK1eHt69XbjDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463803"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 23/35] drm/i915/bios: Define VBT block 24 (SDVO LVDS PnP ID)
 contents
Date: Fri,  3 May 2024 15:24:37 +0300
Message-ID: <20240503122449.27266-24-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 24 (SDVO LVDS PnP ID).

The descriotion is not part of the VBT spec anymore, but the layout
is rather obsvious.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 6216c1689901..8fe2ded884e3 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -964,6 +964,14 @@ struct bdb_sdvo_lvds_dtd {
 	struct bdb_edid_dtd dtd[4];
 } __packed;
 
+/*
+ * Block 24 - SDVO LVDS PnP ID
+ */
+
+struct bdb_sdvo_lvds_pnp_id {
+	struct bdb_edid_pnp_id pnp_id[4];
+} __packed;
+
 /*
  * Block 27 - eDP VBT Block
  */
-- 
2.43.2

