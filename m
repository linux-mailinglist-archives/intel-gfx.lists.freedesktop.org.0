Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1455B5921
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FDA110E39B;
	Mon, 12 Sep 2022 11:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78E910E397
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981500; x=1694517500;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XOmLcosqbgS8x27heBVkD90Pvugtc0lS+iNUJCtA1qA=;
 b=SgN4gPGNHCNi+5c0D9T7FnRCTwTtqGFyqK4a1NTnD/jM7B5Bi/B6fLNV
 W/wLBw2b7WGkSEOIqQvG5S0CT2RtWChT0356jQtUOVKXSmkK3nYCqzFNd
 ZSMXLKT8GUJlhaba5+/49gXW9q2pBcJfpZNykS3ZHZaBYcTqsTkOSEytI
 09gg2qLTU8LYJZGkvPWNxm2hVSbYuOQSKIbUDVd1CxDIeA00ANosXlw6O
 NFHDSKAYUeT28kBxENJx8/GJ5o0B86yY+4VmzfgsRNhoRt7Z1+zvuKI9U
 6iFFKH35F+5VI4n5LPNbvbGPBgiKA+g6ptDTRU8qw538MbIS7mUnFOQqV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="278232093"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="278232093"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="611727272"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 12 Sep 2022 04:18:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:00 +0300
Message-Id: <20220912111814.17466-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/15] drm/i915: Drop pointless middle man
 variable
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

No need for the 'procmon' variable here. Just return the correct
thing from the switch statement directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 64890f39c3cc..71d7aece1dc6 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -53,7 +53,6 @@ static const struct icl_procmon {
 static const struct icl_procmon *
 icl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	const struct icl_procmon *procmon;
 	u32 val;
 
 	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW3(phy));
@@ -62,23 +61,16 @@ icl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
 		MISSING_CASE(val);
 		fallthrough;
 	case VOLTAGE_INFO_0_85V | PROCESS_INFO_DOT_0:
-		procmon = &icl_procmon_values[PROCMON_0_85V_DOT_0];
-		break;
+		return &icl_procmon_values[PROCMON_0_85V_DOT_0];
 	case VOLTAGE_INFO_0_95V | PROCESS_INFO_DOT_0:
-		procmon = &icl_procmon_values[PROCMON_0_95V_DOT_0];
-		break;
+		return &icl_procmon_values[PROCMON_0_95V_DOT_0];
 	case VOLTAGE_INFO_0_95V | PROCESS_INFO_DOT_1:
-		procmon = &icl_procmon_values[PROCMON_0_95V_DOT_1];
-		break;
+		return &icl_procmon_values[PROCMON_0_95V_DOT_1];
 	case VOLTAGE_INFO_1_05V | PROCESS_INFO_DOT_0:
-		procmon = &icl_procmon_values[PROCMON_1_05V_DOT_0];
-		break;
+		return &icl_procmon_values[PROCMON_1_05V_DOT_0];
 	case VOLTAGE_INFO_1_05V | PROCESS_INFO_DOT_1:
-		procmon = &icl_procmon_values[PROCMON_1_05V_DOT_1];
-		break;
+		return &icl_procmon_values[PROCMON_1_05V_DOT_1];
 	}
-
-	return procmon;
 }
 
 static void icl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
-- 
2.35.1

