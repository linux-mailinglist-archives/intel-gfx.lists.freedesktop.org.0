Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD52B20EB3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 17:26:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFBF310E50D;
	Mon, 11 Aug 2025 15:26:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eBfM9TFJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A964B10E50D;
 Mon, 11 Aug 2025 15:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754925971; x=1786461971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0wVLSkJN4Vz8pB7Xki9wG6YUxS8kK+L4GXu/VIK5+yc=;
 b=eBfM9TFJq3K2U2IdetiQ630fU9bvW5Y3n5BlsCAb30xHQmHMqp+23Or8
 729M1SaDg+wpWTtT6AsNCKdCpJbwa6S0BcOGFn81OpaAHXTx/sgVJ9O/i
 GyIjEYUr34YkHRr9/6DaY3IfwggMp/2mAQNePeLWW3qoHDVE+b4US23Wy
 5AghqbK4TL3yV4PHgG20wog7EvOJ+h3JWLSwEXVjB/QGUvNFv9AxGxXpn
 YXFqnvhnNTQdVSDyBQbbulp2+dl6fSi2R+apjurU4qwGoRz/Gt5qO78Ah
 MetemIFvOS2AT9owoHCN33/9xNJkgYlH5VjFJlwwnT+6fDb2uo5McDuKN g==;
X-CSE-ConnectionGUID: cP0hGek1TiG8xU80eX4/Vg==
X-CSE-MsgGUID: jZCyVqadSFe1X38UJV0SMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57086313"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57086313"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:26:11 -0700
X-CSE-ConnectionGUID: Ko102dHSQje6w9SlXRC28A==
X-CSE-MsgGUID: QnDDLlC0SeemxbvOtblYlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="171294175"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:26:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/4] drm/i915/vbt: flip bta_enabled to bta_disable
Date: Mon, 11 Aug 2025 18:25:49 +0300
Message-ID: <180079eca346edc1671c164da2ca7f428c2ba1de.1754925923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1754925923.git.jani.nikula@intel.com>
References: <cover.1754925923.git.jani.nikula@intel.com>
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

The meaning is disable, so flip the member name.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index e6a851d276f8..23402408e172 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -777,7 +777,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 	intel_dsi->init_count = mipi_config->master_init_timer;
 	intel_dsi->bw_timer = mipi_config->dbi_bw_timer;
 	intel_dsi->video_frmt_cfg_bits =
-		mipi_config->bta_enabled ? DISABLE_VIDEO_BTA : 0;
+		mipi_config->bta_disable ? DISABLE_VIDEO_BTA : 0;
 	intel_dsi->bgr_enabled = mipi_config->rgb_flip;
 
 	/* Starting point, adjusted depending on dual link and burst mode */
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
index 7ac872dbba8d..3f9b9ed6592c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
@@ -76,7 +76,7 @@ struct mipi_config {
 #define ENABLE_ROTATION_180	0x2
 #define ENABLE_ROTATION_270	0x3
 		u32 rotation:2;
-		u32 bta_enabled:1;
+		u32 bta_disable:1;
 		u32 rsvd2:15;
 	} __packed;
 
-- 
2.47.2

