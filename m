Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365B7636C34
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95CF210E63E;
	Wed, 23 Nov 2022 21:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC1B310E63E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238319; x=1700774319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=haEKHzsHodMBSolM+HlXiUo1DM112ZMi91GcbljVM+4=;
 b=SsfYcPiSgn16ll0bHFpaFfyBzS7cKipRR52J1VyP3RjhmtlI6fY7BiiF
 qfBvmhVQp/3TkAniSkryBy+gd/WtENb91hEZgZZpKpuKIO2Wg3lWw0kfo
 TwcXcbJ79POhCu5/oL8kADPLm5eN6JmvjvrhdXvwaUFE8XPAXHPfbZp0Q
 N8+Cu6UuBsecjvLb2sMK6UnS8RbWjuReEHP10Yta5fvEVddjRTEM7Z8KZ
 +jQnGuIMn272WaHhWm9IWs5zJtXcNncIczoqLvRop3x0eCl3wz5UToYy6
 SNqT6PKVrutWRUkOvS8jKsncbsUMLrvS3731+Sa3C6YgZ4ZSiannqjEIq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="315312662"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="315312662"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636053027"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636053027"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:15 +0200
Message-Id: <6282acc3fda79af41f6cec405b0dadcba2732839.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915/de: return the old register
 value from intel_de_rmw()
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

A similar thing was added in intel_uncore_rmw(). Make it available for
display too.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 7fd74eda89fc..d8f046af5bdf 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -34,10 +34,10 @@ intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 	intel_uncore_write(&i915->uncore, reg, val);
 }
 
-static inline void
+static inline u32
 intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
 {
-	intel_uncore_rmw(&i915->uncore, reg, clear, set);
+	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
 }
 
 static inline int
-- 
2.34.1

