Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AC78955C7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E83D10FD68;
	Tue,  2 Apr 2024 13:51:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DqzqaKi0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D459A10FD60
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065917; x=1743601917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IUux76NTfKT6kkb82QEaGjmjvyfOPO+8RYFeHZNAtFI=;
 b=DqzqaKi0laZcXXwdVasSuG4YybqGI8tklUfYQGHprGxj0EJbgI8MYwy7
 hbca1Sur7kLzmK3eQjVNxZITBuq8X6iMI53a0SlkdicQv6Ecorm/j3OPY
 LOg0Y3HpvyNy5HA+C7sIigxK5gVHm2urdkI2NJbyBVkg6w3rVWFYEmfka
 gVlVeakji50VWEtFvFjSdlunr8cMtopKmS8fwi6KbmlVgp/hr+7fbKF4B
 CiwayaSF0aREUrA3Jk7XWTdreUvQmo9tU82cf9ADWCHqXBud48l44lYSr
 GxtoQsD/jKZ/sESB/kYgBEyi3WwQhWQMo9856HaHpfD458ufJ/aQ9a5G9 w==;
X-CSE-ConnectionGUID: 19OlNFQpQrOqod1gP4juaA==
X-CSE-MsgGUID: WOy+WC0RStGLtHvTRfRtWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804637"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804637"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789386"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789386"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:51:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:51:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH 2/7] drm/i915: Shuffle DP .mode_valid() checks
Date: Tue,  2 Apr 2024 16:51:43 +0300
Message-ID: <20240402135148.23011-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
References: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
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

Move some of the more trivial checks in the DP .mode_valid()
hooks upwards to lessen the noise amongst the more complex
checks.

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 21 ++++++++++-----------
 2 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b393ddbb7b35..819f3234de03 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1229,6 +1229,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		return MODE_H_ILLEGAL;
 
+	if (mode->clock < 10000)
+		return MODE_CLOCK_LOW;
+
 	fixed_mode = intel_panel_fixed_mode(connector, mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		status = intel_panel_mode_valid(connector, mode);
@@ -1238,9 +1241,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (mode->clock < 10000)
-		return MODE_CLOCK_LOW;
-
 	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9a7c75039989..1405ab5e3acc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1302,6 +1302,16 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (*status != MODE_OK)
 		return 0;
 
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK) {
+		*status = MODE_H_ILLEGAL;
+		return 0;
+	}
+
+	if (mode->clock < 10000) {
+		*status = MODE_CLOCK_LOW;
+		return 0;
+	}
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1330,17 +1340,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-
-	if (mode->clock < 10000) {
-		*status = MODE_CLOCK_LOW;
-		return 0;
-	}
-
-	if (mode->flags & DRM_MODE_FLAG_DBLCLK) {
-		*status = MODE_H_ILLEGAL;
-		return 0;
-	}
-
 	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
-- 
2.43.2

