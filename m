Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A04A47AF19F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 19:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093A110E411;
	Tue, 26 Sep 2023 17:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7990A10E40B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 17:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695748567; x=1727284567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g2RRfU0sW4otM5Q7TbKfEduyzIfOYegrhHwREJUfmM4=;
 b=nmyHp1wPnQ+0VUe7oVIUttHjT2PyRRkBaZFrwPd/QSI3O+oHleWEB6hE
 w0qlSfGe2jTV7TnZV+Ypz7hSN7VzlHV8C2tr4Y+p2WwjRTO9d8pZP6Pki
 WqsxmnYeq/d/R+/ySJHBFXs4YdQf43B3heByKl2SUc7UNkK5oEgjysisZ
 bANbpHt25YbwgvC+vHfTKhGzD4x9U588ZL04WFge+8AU6i8tt09ABjrTy
 4iTM96jJNKo8u6JTdNbjxOZrTfJg4Dl3hf+492TBfxBj4pO3/7+92Zm/+
 mfdvWOHJxbV+hOV49r3blBgw0IDNAWSrSYQMBIZAi0xmR4kplaJrPMjXo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="378899732"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="378899732"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:16:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778207985"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="778207985"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:16:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 20:15:43 +0300
Message-Id: <10dccccf2afa8910049ea5a761f0e8e9ea58fbaf.1695747484.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695747484.git.jani.nikula@intel.com>
References: <cover.1695747484.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 3/3] drm/i915: draft what feature test macros
 would look like
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Obviously they'd be without underscore prefix.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_hdmi.c           | 4 ++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 44733c9d5812..4738d7c59703 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -32,6 +32,10 @@ struct drm_printer;
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
+#define _DISPLAY_INFO(display)		((display)->info.__device_info)
+#define _DISPLAY_RUNTIME_INFO(display)	(&(display)->info.__runtime_info)
+#define _HAS_DDI(display)		(_DISPLAY_INFO(display)->has_ddi)
+
 #define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f06d57b386c0..efc398ad1b67 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2583,9 +2583,9 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
 static int intel_hdmi_connector_atomic_check(struct drm_connector *connector,
 					     struct drm_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->dev);
+	struct intel_display *display = to_intel_display(state->dev);
 
-	if (HAS_DDI(i915))
+	if (_HAS_DDI(display))
 		return intel_digital_connector_atomic_check(connector, state);
 	else
 		return g4x_hdmi_connector_atomic_check(connector, state);
-- 
2.39.2

