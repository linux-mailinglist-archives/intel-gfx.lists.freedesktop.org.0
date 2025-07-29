Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EBFB14CDF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 13:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D9810E615;
	Tue, 29 Jul 2025 11:17:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NMfPXLkJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE9B410E619;
 Tue, 29 Jul 2025 11:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753787846; x=1785323846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnry6cs5MGJyXxu0/MGLRmlDvLvH+97RysTRdbxV1Co=;
 b=NMfPXLkJpjYrtlDr98XP4NZA3miwzZekWhqqhBEhjRr1rBsp+iGLkvct
 ONQVt30BbC2rMP/9++9DrbQPPYc2Z3RzTOx2gg70lHaJxRi+jZRjZCqfw
 MctqELkAAkOo3SG7X2uv5BjLveLq5dMmBHXkRFavu8m/5vX+z6kNMQNlv
 ZVEHquWzazUALLeZEYDY7WkWBYZVWlbl6Ez8Wghy4z/tU77WKn+voNT/6
 knLaoHlGDLW5LkrCD23+dGx8LZXxzW1hXJUoBdQrcnJkI52Yk0/3Zclxx
 ztSRPTtIS0dIFoUTs3/4PNxOK1s8yc5f+NaYfbw0wVBz5tyb2/TzcCEhc g==;
X-CSE-ConnectionGUID: T0DB+G95QOqiQUTVKDQiSQ==
X-CSE-MsgGUID: pqlk92iNRv22GV4QJ2MC1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="66324333"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="66324333"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:17:26 -0700
X-CSE-ConnectionGUID: fhdZ8MeqQFuhf5yZbxTRng==
X-CSE-MsgGUID: ETU42LYsTGmGglIU0wl7xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="168082035"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:17:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/connector: make intel_connector_init() static
Date: Tue, 29 Jul 2025 14:17:09 +0300
Message-Id: <46443c16f9cbff039cd3c830871289ab17110905.1753787803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753787803.git.jani.nikula@intel.com>
References: <cover.1753787803.git.jani.nikula@intel.com>
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

intel_connector_init() is only used in intel_connector.c. Make it
static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 2 +-
 drivers/gpu/drm/i915/display/intel_connector.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 42c923f416b3..6a55854db5b6 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -77,7 +77,7 @@ void intel_connector_cancel_modeset_retry_work(struct intel_connector *connector
 		drm_connector_put(&connector->base);
 }
 
-int intel_connector_init(struct intel_connector *connector)
+static int intel_connector_init(struct intel_connector *connector)
 {
 	struct intel_digital_connector_state *conn_state;
 
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index aafb25a814fa..0aa86626e646 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -14,7 +14,6 @@ struct i2c_adapter;
 struct intel_connector;
 struct intel_encoder;
 
-int intel_connector_init(struct intel_connector *connector);
 struct intel_connector *intel_connector_alloc(void);
 void intel_connector_free(struct intel_connector *connector);
 void intel_connector_destroy(struct drm_connector *connector);
-- 
2.39.5

