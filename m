Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 489BB9E27CA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38DF10EAB1;
	Tue,  3 Dec 2024 16:41:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUd8IngC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B4AD10EAAE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 16:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733244084; x=1764780084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AoZTJ2RyLEIErEUvqzSa+AWDi36LWoD8qYz+h8p5Vw0=;
 b=eUd8IngCZvp6//bhN3GS0pZ/8QNjUWY37yhXeSEACmlu7w1S0dXITbU6
 6rkVwq0JEHAx1Da9aErte0bm99ybFbd63Q/kjRbFdo0ymkWKQHwYIWmVj
 ZCit1nSbT/F9iic1PTkNZNJIo3nUhT7pPtVLoStcKmQAf1dkkVLgxnJQh
 C2fVCu1ZyLDWN2phsyVrrIfz8jdPd9o6ycDTE2/IEN/2d/PqVa+Cyj6O4
 QBl4rkTfq1DFwVkx33qNT9QMhokniu1Hc80daI229IfCsJncT2beqMhY8
 UOKrUUpmB+SfPkCcsKg39Uwnjk0hftSWxIN9wrnid6w7FxvZhQSdNmVMc g==;
X-CSE-ConnectionGUID: Ofh2DmArRR+5LUcXk/Znzg==
X-CSE-MsgGUID: oBSoXQuHSiyDy8xRzgd4UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33347526"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33347526"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:24 -0800
X-CSE-ConnectionGUID: /cXN5eDwSEusHJjCh/gLew==
X-CSE-MsgGUID: R11OULgLRZiJZ/XRo8CGxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93580516"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/6] drm/i915/lspcon: remove dp_to_lspcon(),
 hide enc_to_intel_lspcon()
Date: Tue,  3 Dec 2024 18:40:55 +0200
Message-Id: <a2ecd6358b1a729ed3856d76a64cd4cca4bbb871.1733243959.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733243959.git.jani.nikula@intel.com>
References: <cover.1733243959.git.jani.nikula@intel.com>
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

There are no users left for dp_to_lspcon(), remove it. The only two
users of enc_to_intel_lspcon() are in intel_lspcon.c, so hide it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 12 ------------
 drivers/gpu/drm/i915/display/intel_lspcon.c        |  5 +++++
 2 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 167aa8ec4948..35b65eecc5ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1959,24 +1959,12 @@ static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
 	}
 }
 
-static inline struct intel_lspcon *
-enc_to_intel_lspcon(struct intel_encoder *encoder)
-{
-	return &enc_to_dig_port(encoder)->lspcon;
-}
-
 static inline struct intel_digital_port *
 dp_to_dig_port(struct intel_dp *intel_dp)
 {
 	return container_of(intel_dp, struct intel_digital_port, dp);
 }
 
-static inline struct intel_lspcon *
-dp_to_lspcon(struct intel_dp *intel_dp)
-{
-	return &dp_to_dig_port(intel_dp)->lspcon;
-}
-
 static inline struct intel_digital_port *
 hdmi_to_dig_port(struct intel_hdmi *intel_hdmi)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 485dad6f3629..add2461f4a13 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -54,6 +54,11 @@
 #define  LSPCON_PARADE_AVI_IF_KICKOFF (1 << 7)
 #define LSPCON_PARADE_AVI_IF_DATA_SIZE 32
 
+static struct intel_lspcon *enc_to_intel_lspcon(struct intel_encoder *encoder)
+{
+	return &enc_to_dig_port(encoder)->lspcon;
+}
+
 static struct intel_dp *lspcon_to_intel_dp(struct intel_lspcon *lspcon)
 {
 	struct intel_digital_port *dig_port =
-- 
2.39.5

