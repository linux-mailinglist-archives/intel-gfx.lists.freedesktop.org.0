Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 197548BAC73
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE631128D3;
	Fri,  3 May 2024 12:26:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SaU4aqWJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B7F1128D3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739163; x=1746275163;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yjuR5Tki33k7DBJDvm5GdU6YblBp6F7SJPd2j2aD8uQ=;
 b=SaU4aqWJ9kgligYamFTjK0j2eyVgMO86mPSwPvyJjdFn6yolT/GyzWVO
 dEqv87wgLvKpJDUNyyEz54hT1pdB6P1u6SumoIaFu4/D+NrNldiNw8nZK
 HOlTBBh4VSvVP7kn8xaaeV2k7Hnw1RJV7+/SSSPoP5anuvW53ImmLKFKc
 FpYFkGxsZe8Zr50iex5ecqaMI7FZapyz3mIcBAvSEi1lsF5GYH/ZKa3If
 61pv5L/HU1jPa17STtK9V9f8S7ouc70vfl5QQs5Jfw+kKF7MgIg2BDFFl
 UuUtE5gcx0AmEIkizvH32IycjOPJN6kgBDD1RTYeXsdZ3V2swAkPjR2RL Q==;
X-CSE-ConnectionGUID: JEV3pkeTQUaSKCYixirRXw==
X-CSE-MsgGUID: UIkIou19Ts+dlGV3UhFTAw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372785"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372785"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:03 -0700
X-CSE-ConnectionGUID: b5/yEn3JRweBb/RzHIpghA==
X-CSE-MsgGUID: TzzsO4opTaCxcxf9tgY8og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463830"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 25/35] drm/i915/bios: Define VBT block 26 (TV Options) contents
Date: Fri,  3 May 2024 15:24:39 +0300
Message-ID: <20240503122449.27266-26-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 26 (TV Options).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index c6d03905593d..1b94d4aba00a 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -988,6 +988,18 @@ struct bdb_sdvo_lvds_pps {
 	struct sdvo_lvds_pps pps[4];
 } __packed;
 
+/*
+ * Block 26 - TV Options Block
+ */
+
+struct bdb_tv_options {
+	u16 underscan_overscan_hdtv_component:2;
+	u16 rsvd1:10;
+	u16 underscan_overscan_hdtv_dvi:2;
+	u16 add_modes_to_avoid_overscan_issue:1;
+	u16 d_connector_support:1;
+} __packed;
+
 /*
  * Block 27 - eDP VBT Block
  */
-- 
2.43.2

