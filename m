Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FC5A5CB96
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026C410E612;
	Tue, 11 Mar 2025 17:06:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YPZe4M1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DDB010E5FF;
 Tue, 11 Mar 2025 17:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712790; x=1773248790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wjtg8A6J611/dR8cEVlfIXS5I7t3ZYpr0n0c3/9lzRI=;
 b=YPZe4M1ZRfcC+yalJv75lF0N82WKSE6JUgxx9MEeV+B+b12MAaKUhYjl
 Pg3GJY9DeGY0QcfSZxpAGfB/jQMlMNx2SfYR3S/nuNPFRpaxDJvzcusbF
 RaDClx+HgmW4OXdSEb7J7RuYRRCTGYuagOZQQ0RRQUCWbMZtCpK3YCqGS
 2cqy5ZbIzDfwxbQFLZdi3yXrXCdKB9YJ2G7nK1q9Frr6CceU4dt1+IC/t
 BPoppyYCJ/vKS3ZtlaPQFO9f0uGjnAeTA/vVEFFL8lNb9SuTF2Ldpxf9C
 lWJD0tAxYe/chJBp8MYoGVLNdXOwW/PpHKcw2r3diSmOixkDlnaOaQ9pG w==;
X-CSE-ConnectionGUID: H7TkFwXVS7SiSER/hlws7Q==
X-CSE-MsgGUID: 8U6w7EVzRdOeQ5CGcalivw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45547732"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45547732"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:30 -0700
X-CSE-ConnectionGUID: TQ2i9eQfR6SwJrz7qmcYdg==
X-CSE-MsgGUID: aWycyOQERi+B8dJzDdy16Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120889177"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 2/7] drm/i915/hotplug: use container_of() to get struct
 intel_display
Date: Tue, 11 Mar 2025 19:06:09 +0200
Message-Id: <57de5aee9cd6de88477180d62bd497924e92b3ce.1741712601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741712601.git.jani.nikula@intel.com>
References: <cover.1741712601.git.jani.nikula@intel.com>
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

Get to the struct intel_display pointer, not struct drm_i915_private.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 21 ++++++++++----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index c69b1f5fd160..0467a7cd5256 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -264,9 +264,9 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, typeof(*dev_priv),
-			     display.hotplug.reenable_work.work);
+	struct intel_display *display = container_of(work, typeof(*display),
+						     hotplug.reenable_work.work);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	intel_wakeref_t wakeref;
@@ -388,8 +388,8 @@ static u32 get_blocked_hpd_pin_mask(struct intel_display *display)
 
 static void i915_digport_work_func(struct work_struct *work)
 {
-	struct intel_display *display =
-		container_of(work, struct intel_display, hotplug.dig_port_work);
+	struct intel_display *display = container_of(work, typeof(*display),
+						     hotplug.dig_port_work);
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	u32 long_hpd_pin_mask, short_hpd_pin_mask;
@@ -468,8 +468,8 @@ void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
  */
 static void i915_hotplug_work_func(struct work_struct *work)
 {
-	struct intel_display *display =
-		container_of(work, struct intel_display, hotplug.hotplug_work.work);
+	struct intel_display *display = container_of(work, typeof(*display),
+						     hotplug.hotplug_work.work);
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hotplug *hotplug = &display->hotplug;
 	struct drm_connector_list_iter conn_iter;
@@ -784,10 +784,9 @@ static void i915_hpd_poll_detect_connectors(struct drm_i915_private *i915)
 
 static void i915_hpd_poll_init_work(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, struct drm_i915_private,
-			     display.hotplug.poll_init_work);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = container_of(work, typeof(*display),
+						     hotplug.poll_init_work);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	intel_wakeref_t wakeref;
-- 
2.39.5

