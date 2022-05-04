Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D8851A31B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FEC10ED3D;
	Wed,  4 May 2022 15:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333A310ECE2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676709; x=1683212709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XKWkROQXShfc1cuESgW3TAtDpmkRjUCpiSuPvH7iIFs=;
 b=MPRQ2CqzXFFPzyNVUmh230fHRCsSGUDXGGiPznpWxLa2yA+Z2wC3mZWN
 z/TuKBbXrQFCMcPIv57x9gs+1s4bAZCkFOYLpjpbjdGJTg1TpCwMeK+d/
 wGnZnjsZ30KO6/m5eapkQYtMz12S3nEajkKw+KmDUQutYoDzRgFvNPSOH
 MBYLmBhjRvWsEDD0oENUN+If1Bo9QZ040B8aMujvBE2Aq13nvuhW/3n+F
 UZ8LlSOP1+74esg5/JdNNL7KkK9xox+qM6uKX/5p1vFf2PzhlxWskqzbg
 7CKZOc0LWJfWkh9cev4Ghu01Kqim3tAMz0qpcpLMXa5Q23boa7ruXPcdY g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="266634628"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="266634628"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:05:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="708507214"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 04 May 2022 08:05:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:05:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:39 +0300
Message-Id: <20220504150440.13748-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/bios: Parse the seamless DRRS
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the seamless DRRS min refresh rate from the VBT.

v2: Do a version check

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 9 ++++++++-
 drivers/gpu/drm/i915/i915_drv.h           | 1 +
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 46ce9e9f14f2..0c5638f5b72b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -762,6 +762,7 @@ parse_lfp_data(struct drm_i915_private *i915)
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	int panel_type = i915->vbt.panel_type;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
@@ -778,7 +779,13 @@ parse_lfp_data(struct drm_i915_private *i915)
 	if (!tail)
 		return;
 
-	(void)tail;
+	if (i915->vbt.version >= 188) {
+		i915->vbt.seamless_drrs_min_refresh_rate =
+			tail->seamless_drrs_min_refresh_rate[panel_type];
+		drm_dbg_kms(&i915->drm,
+			    "Seamless DRRS min refresh rate: %d Hz\n",
+			    i915->vbt.seamless_drrs_min_refresh_rate);
+	}
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2dddc27a1b0e..00d7eeae33bd 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -327,6 +327,7 @@ struct intel_vbt_data {
 	bool override_afc_startup;
 	u8 override_afc_startup_val;
 
+	u8 seamless_drrs_min_refresh_rate;
 	enum drrs_type drrs_type;
 
 	struct {
-- 
2.35.1

