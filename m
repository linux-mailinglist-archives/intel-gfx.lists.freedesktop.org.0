Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D844F3CF5
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9423F10EDC7;
	Tue,  5 Apr 2022 17:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F28110EDCB
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180129; x=1680716129;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IgVqLB9KUwwVuIyiRKWLG2PoiUD+gQbpHYrIBkDDLWg=;
 b=dGZpLPv2mdVe8P3rBTdqZse0LjtaQGSl0yAPcAF0mxOohl+ro/3TzMgs
 6LX3Nu/nvxEI3rqi6tbCAEmcrQzkRv9KR9b97Zpg3RK950Dz9I8+8vJSj
 2A8CobvhhhHGwfCSaWe0/gz8tzgx/Kzd3hf6tnJ32PtVpvVadkBkVsF5O
 KLAGUMnAadGiuc1soVYxxjWY+rMwrUvl/vRuKQZwe2aUyB5pn12MxX6yy
 aFj044JDdQEaeNibtxMQuf+PuBUDD8hMinyBJED9SDy8ra+HYVI6Gz8R5
 iuvE3CPjRVMmaVEGEHcBThS2DyMSOhmcIv8hjfq2R/rspv16GVg3aksZP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="258402699"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="258402699"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:35:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="651984722"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 05 Apr 2022 10:35:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:35:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:08 +0300
Message-Id: <20220405173410.11436-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 20/22] drm/i915: Respect VBT seamless DRRS
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

Make sure our choice of downclock mode respects the VBT
seameless DRRS min refresh rate limit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 03398feb6676..35d8676438a3 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -75,13 +75,17 @@ const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
-	int vrefresh = drm_mode_vrefresh(adjusted_mode);
+	int min_vrefresh = i915->vbt.seamless_drrs_min_refresh_rate;
+	int max_vrefresh = drm_mode_vrefresh(adjusted_mode);
 
 	/* pick the fixed_mode with the lowest refresh rate */
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
-		if (drm_mode_vrefresh(fixed_mode) < vrefresh) {
-			vrefresh = drm_mode_vrefresh(fixed_mode);
+		int vrefesh = drm_mode_vrefresh(fixed_mode);
+
+		if (vrefesh >= min_vrefresh && vrefesh < max_vrefresh) {
+			max_vrefresh = vrefesh;
 			best_mode = fixed_mode;
 		}
 	}
-- 
2.35.1

