Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BFB4F3CF1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD7210EDA2;
	Tue,  5 Apr 2022 17:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE5D10ED94
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180112; x=1680716112;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=D8MSGwAgyq/rWRnONCU8XqC/ES+2jqbhxRAZY3Dtdmc=;
 b=gMEDStl7OfVvmhtl3v3/Gu1TMTiA2cmfGZQKn07A6Tot2NKP7G9qT9w9
 xDgrDK0JUL26wuHcU67WdHhE4iaM+wiqEgRzGoDCoR6b/RL/cjoH9q9yl
 I1fXPhUxa5LWqHWqKJMBEt06LF3ru7oMxGfVeI+zU2NcQi0QnZOl4M9NO
 uwuMFED+MSfZi2bj0YwenkHpNLVh7q6De/gXm+33IEpzalvHlySr2enCa
 /9VQqFlEIhUr1d6In23kFuEG98TVom48RSq4cVJV7mf/pkrjhlB12YlJH
 m+TPrmdD9QbReHaPf1GXgyaPgttEbqbpdJMX2Z6ItDiS2vn7LNs6LDugI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="259648536"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="259648536"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:35:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="608534435"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 05 Apr 2022 10:35:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:35:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:07 +0300
Message-Id: <20220405173410.11436-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 19/22] drm/i915/bios: Parse the seamless DRRS
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

v2: Do a version check

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 9 ++++++++-
 drivers/gpu/drm/i915/i915_drv.h           | 1 +
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cfdfe91d4ccf..d561551d6324 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -802,6 +802,7 @@ parse_lfp_data(struct drm_i915_private *i915)
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	int panel_type = i915->vbt.panel_type;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
@@ -818,7 +819,13 @@ parse_lfp_data(struct drm_i915_private *i915)
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
index 9274417cd87a..7b6858651420 100644
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

