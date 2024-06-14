Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF7390897A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 12:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CAE10ECDA;
	Fri, 14 Jun 2024 10:16:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJLKwyZz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6EA10E17D;
 Fri, 14 Jun 2024 10:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718360175; x=1749896175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/7RCYWGNPYz/U2WZNuk6anoe7bqzGeS+GHcv0XxCLlo=;
 b=AJLKwyZzaCnrweyt3d/yTC+d/N5V6zBK7ptOE1Kg76RS+UyMxjmyZNuQ
 AKq1H0GHUqa69VDYGWXhdMPDvyF6Zepd+C4G6Rj19f1LzULO+CDa+cyNE
 pFRLcP4Yn+5GWyekV6nVp6XrdqtY61nhA0JrqDnEEen7x0XnHR8qRPXx+
 8rtZPadgcTVTd24glvWhE59iZtCgZYMGoJrRAxE2/D8t5XQyDqdvljBAw
 dqkfqPf35JikGZ7PsYeSgc8hlyjmJH3W+v4BoX1GDoUl968YlKhRBhm8x
 D4iOb1Hi/XEzcHHzwRyg7nMtO16AGXtZib2fLSZZgAUNHNaH80qttrAIg A==;
X-CSE-ConnectionGUID: s7RDxX2DQwWnQxhTtF05pQ==
X-CSE-MsgGUID: 5QlGlSzIR8ynIWJm+QC7LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25814264"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25814264"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 03:16:15 -0700
X-CSE-ConnectionGUID: D1fv2w0qRI2fOR/bsGO2pA==
X-CSE-MsgGUID: PLu5+aGXT8eioJAnVk6o5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="63658294"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 03:16:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 stable@vger.kernel.org
Subject: [PATCH v2 1/2] drm/i915/mso: using joiner is not possible with eDP MSO
Date: Fri, 14 Jun 2024 13:16:03 +0300
Message-Id: <137a010815ab8ba8f266fea7a85fe14d7bfb74cd.1718360103.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718360103.git.jani.nikula@intel.com>
References: <cover.1718360103.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

It's not possible to use the joiner at the same time with eDP MSO. When
a panel needs MSO, it's not optional, so MSO trumps joiner.

While just reporting false for intel_dp_has_joiner() should be
sufficient, also skip creation of the joiner force enable debugfs to
better handle this in testing.

Cc: stable@vger.kernel.org
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1668
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_dp.c              | 4 ++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 91757fed9c6d..5eb31404436c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1546,8 +1546,12 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	if (DISPLAY_VER(i915) >= 11 &&
 	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
-		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
-				    &connector->force_bigjoiner_enable);
+		struct intel_dp *intel_dp = intel_attached_dp(connector);
+
+		/* eDP MSO is not compatible with joiner */
+		if (!intel_dp->mso_link_count)
+			debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
+					    &connector->force_bigjoiner_enable);
 	}
 
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9a9bb0f5b7fe..ab33c9de393a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -465,6 +465,10 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &intel_dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
+	/* eDP MSO is not compatible with joiner */
+	if (intel_dp->mso_link_count)
+		return false;
+
 	return DISPLAY_VER(dev_priv) >= 12 ||
 		(DISPLAY_VER(dev_priv) == 11 &&
 		 encoder->port != PORT_A);
-- 
2.39.2

