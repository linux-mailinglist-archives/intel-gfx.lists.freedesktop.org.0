Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 710D74DCC46
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F0410E62C;
	Thu, 17 Mar 2022 17:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FA010E62C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537628; x=1679073628;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3dQ8UmeIOPuRspoukUYX3f9CxWL/vo0AA+SwCA7ifRI=;
 b=f0WznkGwMQTVtiMZOkvrhmdtpfqROq8MI7INNmx1IyhKbRmBWKoiqGN1
 aY387TBzVNEaCT5JzPPAthCNBos5FYnFdVodPGk4+Q6iUg1w1Pnl0ArgV
 v4knVEK1PcM5tEO0EZxMyLeoa0cgUzUnCbVaUdLDEZGiX/t/DHiR3g6hJ
 qlhWrc7myJk8tP4t86TxWMRh9glV1hqlht1aL/vpm++SwCfXuR5EmFcEF
 rCj0cEI4yIJx/0BqS44nXGaFiNbKkK0j4hGBuV8CBF5qyxnGTradZmHNn
 fyWsTYX88dTzFZ15NaXhGmZIogRnCXml0ZGBlPpWkWdoMrunXPiEwhbUt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="320136686"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="320136686"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:20:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="541452368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 17 Mar 2022 10:20:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:20:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:47 +0200
Message-Id: <20220317171948.10400-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/bios: Parse the seamless DRRS
 min refresh rate
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

Extract the seamless DRRS min refresh rate from the VBT.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 7 ++++++-
 drivers/gpu/drm/i915/i915_drv.h           | 1 +
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3d56fd440c0b..542ad289cc49 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -648,6 +648,7 @@ parse_lfp_data(struct drm_i915_private *i915,
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	int panel_type = i915->vbt.panel_type;
 
 	ptrs = find_section(i915, bdb, BDB_LVDS_LFP_DATA_PTRS,
 			    sizeof(*ptrs));
@@ -666,7 +667,11 @@ parse_lfp_data(struct drm_i915_private *i915,
 	if (!tail)
 		return;
 
-	(void)tail;
+	i915->vbt.seamless_drrs_min_refresh_rate =
+		tail->seamless_drrs_min_refresh_rate[panel_type];
+	drm_dbg_kms(&i915->drm,
+		    "Seamless DRRS min refresh rate: %d Hz\n",
+		    i915->vbt.seamless_drrs_min_refresh_rate);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0f52ce62281e..0d51028ec553 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -329,6 +329,7 @@ struct intel_vbt_data {
 	bool override_afc_startup;
 	u8 override_afc_startup_val;
 
+	u8 seamless_drrs_min_refresh_rate;
 	enum drrs_type drrs_type;
 
 	struct {
-- 
2.34.1

