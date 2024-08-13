Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAA99508A4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 17:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CC010E37D;
	Tue, 13 Aug 2024 15:12:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gNZdqb37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9017610E37D
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 15:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723561941; x=1755097941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EdOwiS9O9LJUbI0bXUgB5DgxM5ZDTngrclEs4yjLTqY=;
 b=gNZdqb37go2nCoN5PN6AgIBFxFguWCgbgBQ2koqUX5kytX3aU+Wva9WE
 OkxvjirwYpLScU9c6uUyh465igtpDGF9e01d9LmEW51wKfUqZDEF5wwaV
 5fjc3hlh0X45a+lNg1EhZFfNGAfxMDyf3cwtFw9GtpOIVKXFDTp6LmlLQ
 gvgHukSJMrzF7e6pAmKOowRWqLpwjTEX+srId9nxwRaL8P9NEQXevxMa1
 ukXlrF9hJHbf9DM5ZkHrZoxv7FctAd6ZpuorOVmvx1Z/1RnFOcJD0kiDp
 ijI1btkb7sglMQ9sNk4YIZRtYfCrSZPVCSPlPSYWgR3l6fjRg0d8qokqa w==;
X-CSE-ConnectionGUID: PhcRLbiRSmmIpcjCEUtAsw==
X-CSE-MsgGUID: wfka8+8RRiK5Ki9cA56jrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="12985931"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="12985931"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 08:12:21 -0700
X-CSE-ConnectionGUID: a95CQAxGQWu3W+54McsGoA==
X-CSE-MsgGUID: 2tHEMnT9St+gouR9wj6Vgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="58656629"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 08:12:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: make __intel_display_power_is_enabled() static
Date: Tue, 13 Aug 2024 18:12:16 +0300
Message-Id: <20240813151216.2573845-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The function isn't used outside of intel_display_power.c. Make it
static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   | 16 ++--------------
 .../gpu/drm/i915/display/intel_display_power.h   |  2 --
 2 files changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 0af1e34ef2a7..cf8b38f2ebf5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -198,20 +198,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 	}
 }
 
-/**
- * __intel_display_power_is_enabled - unlocked check for a power domain
- * @dev_priv: i915 device instance
- * @domain: power domain to check
- *
- * This is the unlocked version of intel_display_power_is_enabled() and should
- * only be used from error capture and recovery code where deadlocks are
- * possible.
- *
- * Returns:
- * True when the power domain is enabled, false otherwise.
- */
-bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
-				      enum intel_display_power_domain domain)
+static bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
+					     enum intel_display_power_domain domain)
 {
 	struct i915_power_well *power_well;
 	bool is_enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d6c2a5846bdc..0962f6aaeee6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -188,8 +188,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
 
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				    enum intel_display_power_domain domain);
-bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
-				      enum intel_display_power_domain domain);
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
 					enum intel_display_power_domain domain);
 intel_wakeref_t
-- 
2.39.2

