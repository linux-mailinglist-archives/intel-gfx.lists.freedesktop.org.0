Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9AD5BB511
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 02:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8604310E0E1;
	Sat, 17 Sep 2022 00:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E9C10E028
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663375469; x=1694911469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ACNh73HMdvVTHjpHwffGNUmuQm6gGDSDUWA7BwqfJYM=;
 b=dBqwpd//ofVaLzi8SfUiYNTWpbD4VsVSqi3NZeRJWTNQ1e5d30y51J/d
 WLk0/gu6TycqKJjvYZUjfrYTCW2n8nJIVUPC3klCr4CYZ7RfxDUfjv4Oi
 RGxEot0xD5rSKtVir7GWcxQWcG9e9gaDRhuFUrTmn2lFrjcoDE/lUXgy2
 4Ico+S4MhNhwiYtYevJIxFooTIaDYg1imumeOoUdQFpUoqeuwnT0yuvwd
 EYfxHfZKS35GFSWaxcuOTOtWjRM0fJviE/CP85b5GXpwGhDqgFsmyMeRR
 V/sxfr5JDk8uHnhTKTlIWtbUuLSDdmCkh6AqFZUaniIF5r+5vKYA/knAP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278835746"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="278835746"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="743519308"
Received: from cgros-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.28.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:29 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 17:44:04 -0700
Message-Id: <20220917004404.414981-7-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/display: Dump the new cdclk config
 values
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

Add a helper function to get stringify values of the
desired cdclk action and dump it with rest of the
cdclk config values

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index bc627daade3e..12f5e4d23245 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1688,6 +1688,19 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 
 	return 0xffff;
 }
+static const char *cdclk_sequence_to_string(enum cdclk_sequence cdclk_sequence)
+{
+	switch (cdclk_sequence) {
+	case CDCLK_SQUASH_ONLY:
+		return "Squash only";
+	case CDCLK_CRAWL_ONLY:
+		return "Crawl only";
+	case CDCLK_LEGACY:
+		return "Legacy method";
+	default:
+		return "Not a valid cdclk sequence";
+	}
+}
 
 static void dg2_prog_squash_ctl(struct drm_i915_private *i915, u16 waveform)
 {
@@ -2083,10 +2096,11 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
 			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context)
 {
-	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
+	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d, %s action\n",
 		    context, cdclk_config->cdclk, cdclk_config->vco,
 		    cdclk_config->ref, cdclk_config->bypass,
-		    cdclk_config->voltage_level);
+		    cdclk_config->voltage_level,
+		    cdclk_sequence_to_string(cdclk_config->steps->action));
 }
 
 /**
-- 
2.25.1

