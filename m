Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9682D5B0010
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4A310E490;
	Wed,  7 Sep 2022 09:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E917D10E4A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541905; x=1694077905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EbcvYY0O9mBTCYpJWtG4eNUsdr39HY7+8kRiILaAaGc=;
 b=InQe18r89tGk7ClT0hWgFm6M1CbRRPMy7BkjYm1JKJMgT0EY1LZc3+i8
 kWitZWCOhUW5jAvzC/ngMmMHzyF5FVsn/Y/rH6r2sU4ndDlyWbfQB6Avq
 BNAouG/kEfQokJaQ6rIWitV/qgj5g+BDpXagkHZeTc0bxWvfJnFJm6Cg7
 5/ESRe49IEk05cuKx7QsiJZFb+6zrQy9gKLMyqqhm0M1aVe6Gg62g5PCU
 5b4tmy4RobQ5d78ErYvD9sVdVp6Lrad5d2Fknwm93Tt4pK5O79X/ofUW5
 Rp6uiY+ga9O+0O5HW3P07AB6QFx262uDi0U2N4CA8pfum2Hiai45qjTwn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="383118277"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="383118277"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="614416751"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 07 Sep 2022 02:11:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:54 +0300
Message-Id: <20220907091057.11572-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 14/17] drm/i915: Add
 intel_panel_highest_mode()
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

Add a function to get the fixed_mode with the highest clock.
The plan is to use this for the link bw calculation on seamless
DRRS panels so that we alwasy end up with the same link params
regardless of the requested refresh rate. This will allow fastset
to do seamless refresh rate changes based on userspace request
instead of having to go for a full modeset.

TODO: the function name isn't great

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index d27a220def00..a3a3f9fe4342 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -114,6 +114,21 @@ intel_panel_downclock_mode(struct intel_connector *connector,
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
index b087c0c3cc6d..eff3ffd3d082 100644
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

