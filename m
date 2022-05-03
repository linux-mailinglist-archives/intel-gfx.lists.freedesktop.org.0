Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D9E518C3F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30E210EA61;
	Tue,  3 May 2022 18:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A75F10EA41
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602229; x=1683138229;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PEjsxtIpzRpJzpyHRdQcfN1b6Ppr7WBnpLR84GBrAHg=;
 b=jauVOiiUINHzNV/QEzNm4xAs5UVeaDKIvjRLZYcMNmoNWKjfGboz6M34
 MG+GvdfjEb5zqOrQRQab2lDA41hrn65C5K6CMNumbyQa7LDf2Ulu4F4I5
 eCAUUrodpug+EJVoa55sAwJP1KATUu7SVeKTz98BdNKqbmZxEiefUAJqA
 5TszbW43xxFpWbvofljvA3ij6h7rJJUWIkPVa1eXTu3hO+ZGRRGW7jzym
 aQqylfVZyRuY9tjiOpN1WF2UWAT9puuu7MLjvp0sDD0WLQsWefrG4IZTZ
 6v+g3aWvVLEbgrgDvPPjw420usKZiJmIDEz2lxoRt0LKzEKs5dQWtp1Ex Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267709406"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267709406"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="599180258"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 03 May 2022 11:23:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:37 +0300
Message-Id: <20220503182242.18797-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/26] drm/i915: Add intel_panel_highest_mode()
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

Add a function to get the fixed_mode with the highest clock.
The plan is to use this for the link bw calculation on seamless
DRRS panels so that we alwasy end up with the same link params
regardless of the requested refresh rate. This will allow fastset
to do seamless refresh rate changes based on userspace request
instead of having to go for a full modeset.

TODO: the function name isn't great

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 03398feb6676..0121d38fc36c 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -89,6 +89,21 @@ intel_panel_downclock_mode(struct intel_connector *connector,
 	return best_mode;
 }
 
+const struct drm_display_mode *
+intel_panel_highest_mode(struct intel_connector *connector,
+			 const struct drm_display_mode *adjusted_mode)
+{
+	const struct drm_display_mode *fixed_mode, *best_mode = adjusted_mode;
+
+	/* pick the fixed_mode that has the highest clock */
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+		if (fixed_mode->clock > best_mode->clock)
+			best_mode = fixed_mode;
+	}
+
+	return best_mode;
+}
+
 int intel_panel_get_modes(struct intel_connector *connector)
 {
 	const struct drm_display_mode *fixed_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 2e32bb728beb..8a3b84a53c44 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -31,6 +31,9 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode);
+const struct drm_display_mode *
+intel_panel_highest_mode(struct intel_connector *connector,
+			 const struct drm_display_mode *adjusted_mode);
 int intel_panel_get_modes(struct intel_connector *connector);
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
-- 
2.35.1

