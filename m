Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D867C8BAC75
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAE51128E1;
	Fri,  3 May 2024 12:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fKrxPHAm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FAD1128E1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739169; x=1746275169;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rlnZDXLRCa9/qC959u2J7byVSX5YxLPBGM0ASibSHfk=;
 b=fKrxPHAmzrTTN469b1QpObNOL3N6oBTLvTlw6AFi44Ysiz1cLfMfJ4fU
 Dy5VcrWFIAoucC7Vi8K3K4evVpIlW8zYABPSNwmWvfnQpMHDz/4ms/mfF
 GeumPkGEnJJ1X42wjZiiSa5ghtMhZxkBpmFQpOdKHN+bIW3DIFQeA5sCG
 Z6LjLuYs/alR1RCzh65WHMADp2z62ige+WCbS9q69fWe0AQ30WFnJFR6+
 TLOOpeH3ZzXy4cs2stF9R2dl62BrptAiV+Hwle0ZBR/izawZyNsFyNj68
 rrjMaoR1Mfkjvmvu/CtPhcWBnhVRgc6gnzheLJkuuVVvmfMsw8GymqY23 Q==;
X-CSE-ConnectionGUID: CZ+vkxYeQ0qZCiltzUdltg==
X-CSE-MsgGUID: oeOHmgd9SU2ra40LfCuQhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372787"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372787"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:09 -0700
X-CSE-ConnectionGUID: 73rx5pXeTIiRS26g9dkbVQ==
X-CSE-MsgGUID: /5ngNmqkRkG9xIyeMq6CFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463865"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 27/35] drm/i915/bios: Define VBT block 45 (eDP BFI) contents
Date: Fri,  3 May 2024 15:24:41 +0300
Message-ID: <20240503122449.27266-28-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 45 (eDP BFI).

Note that I've not actually seen any real world VBTs with this
block.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 716a339f6e2a..87d073154d49 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -177,6 +177,7 @@ enum bdb_block_id {
 	BDB_LFP_DATA			= 42,
 	BDB_LFP_BACKLIGHT		= 43,
 	BDB_LFP_POWER			= 44,
+	BDB_EDP_BFI			= 45, /* 160+ */
 	BDB_MIPI_CONFIG			= 52, /* 175+ */
 	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
 	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
@@ -1347,6 +1348,22 @@ struct bdb_lfp_power {
 	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247+ */
 } __packed;
 
+/*
+ * Block 45 - eDP BFI Block
+ */
+
+struct edp_bfi {
+	u8 enable_bfi_in_driver:1;
+	u8 enable_brightness_control_in_cui:1;
+	u8 reserved:6;
+	u8 brightness_percentage_when_bfi_disabled;
+} __packed;
+
+struct bdb_edp_bfi {
+	u8 bfi_structure_size;
+	struct edp_bfi bfi[16];
+} __packed;
+
 /*
  * Block 52 - MIPI Configuration Block
  */
-- 
2.43.2

