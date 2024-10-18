Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481009A4873
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34E510E996;
	Fri, 18 Oct 2024 20:49:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjL9V86i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3CE10E994;
 Fri, 18 Oct 2024 20:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284588; x=1760820588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IOo7BYoDy99k4tV8+KUOjtIzDdeOCaKkEgwHRriKFaQ=;
 b=UjL9V86iTcsB9BVwQX/X+QwgglpvIBg1ZJyBOqS/DjNhB43cNkUiAuTP
 3lTWuXJmr7JfViyFLSlWE7i8DbRFQg2TFpOic25wgI5kDjXmoLA4tqAWX
 QO6P0mcMzJFdigo4+LbuW74CkrHXeH72m9aTEI8T9wiix16J7BWNPEYWJ
 npBmy3uzHRYpwqYsK5ea6ttGhwujuitw/1HRakHoQauYhIuR1vQ4zsGmL
 /nMgjIQYUZkH7R71kP+LfreAf59V+l0PXtV0siar3SroqT7DQajIgawoF
 z50pHP3bWbQvd34qloisWr1kDV2JE4aSvH58UQ4hyujrqtqrBD9ULGzbx w==;
X-CSE-ConnectionGUID: GHAWGQMpS+2jIKk8LwNk1Q==
X-CSE-MsgGUID: RO/nWq8TTZW6ByF5SHjgIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240180"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240180"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:47 -0700
X-CSE-ConnectionGUID: YrkYfjt6Tlq9MV6zEl8T6w==
X-CSE-MsgGUID: BAFwtNvnRZW29LR+326xeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798932"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:47 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 03/12] drm/i915/cx0: Extend C10 check to PTL
Date: Fri, 18 Oct 2024 13:49:32 -0700
Message-ID: <20241018204941.73473-4-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

When deciding the type of the phy, Add PTL support to make
sure the correct path is taken for selection of C10 PHY.
Only port A is connected C10 PHY for Pantherlake.

Bspec:  72571
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 9 +++++++--
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 13a99f494680..73a151c81706 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -34,6 +34,9 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
+	if (IS_PANTHERLAKE(i915) && phy == PHY_A)
+		return true;
+
 	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
 		return true;
 
@@ -221,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
@@ -310,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index b7041b578e5e..bd8c3de57dcd 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -67,6 +67,7 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
 #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
 #define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
+#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
 
 #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
 #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
-- 
2.45.0

