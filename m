Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7667C6EA9A2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C2910EE0E;
	Fri, 21 Apr 2023 11:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8935810EE0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077718; x=1713613718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0tYq4JkEAbUznfSNyxEOpa5pHnzpkPOve2hwmZjhTnQ=;
 b=DsjkOIOdwW7jZEN77ZDeOnaJ8hQNWZUXzzO+Aeycgnc8Dl0HIFQf8aMK
 xa7P06B/oXIQpG3dwVW1bOiGVDcPfpfoWSkkLynOUmkM3FRvUSA6tvwdJ
 vVZX6P3WSFwhgBepwMEx02y4+QJzXmkCwCxzAOihr/vEXkfcaTBnVF9Xg
 /EV9BkPYPIQqan6IMUtR0/IymMjsk0Z30TIESieYayy2hniAfj62QCbZV
 gtEV6tMJlbKbhh02ZfDVJ7TsR/WGBHMh+JpesJprtz2JktxAaJiO2MRpx
 Ikrvlk+eWd56nqEoAgEQ2DYRijqlrARuWpHaa3vjGsKSYrh6qjVeVYwQ/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344730317"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344730317"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="685709517"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685709517"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:48 +0300
Message-Id: <5807d1d2eb484ca90eceb4689261942a5ab3c8d1.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/lvds: switch to
 drm_edid_read_switcheroo()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use drm_edid_read_switcheroo() to switch from struct edid to struct
drm_edid.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 8e9a3d72b83b..682d5cdaa0ba 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -943,17 +943,8 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	 */
 	mutex_lock(&i915->drm.mode_config.mutex);
 	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC) {
-		const struct edid *edid;
-
-		/* FIXME: Make drm_get_edid_switcheroo() return drm_edid */
-		edid = drm_get_edid_switcheroo(&connector->base,
-					       intel_gmbus_get_adapter(i915, pin));
-		if (edid) {
-			drm_edid = drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENGTH);
-			kfree(edid);
-		} else {
-			drm_edid = NULL;
-		}
+		drm_edid = drm_edid_read_switcheroo(&connector->base,
+						    intel_gmbus_get_adapter(i915, pin));
 	} else {
 		drm_edid = drm_edid_read_ddc(&connector->base,
 					     intel_gmbus_get_adapter(i915, pin));
-- 
2.39.2

