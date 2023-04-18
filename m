Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C726E6B8F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AC210E83E;
	Tue, 18 Apr 2023 17:56:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3A310E813
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840586; x=1713376586;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lOEqtM1KfspT9hHISUpUUhcEfUtX3IyT4jdHlp+Ylic=;
 b=GvK9xtvx5ccrXceCg5HkKdrtp6sWUJwiuh2n2t6wYLsT2agzZcw9Wokk
 gUneruccAzbqmMmgsjEkOCcfb9D/c5AmaU72K6iKrrahAITO+sKnlbggX
 v59XZ6Ewp6crP55ZcbQP3hJYgdJ0hvAhYRRPBjgbuR3twnbLS6KXyLLuG
 ZRkhtTLXjpfAZQ0xPf70zjkBAGsBQfHcHR+6+XI/o7MuyST8KsbytQK7o
 1poTlB0ZiEsNb8WF3ScD/WFKevXaxU6snrAmD759KHU55NWAhHY20+o/U
 vk6Zs73KteIbuUiLK4nbL+WjtXqsmjUfuaHblvtFiuKptMrWYoMus4NAT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348002281"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="348002281"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:56:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="815302697"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="815302697"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 18 Apr 2023 10:56:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:56:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:28 +0300
Message-Id: <20230418175528.13117-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: Define more PS_CTRL bits
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

To avoid annoying spec lookups let's define more PS_CTRL
bits in the header.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9a6343d2e0fa..5baaf6df6951 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4050,6 +4050,9 @@
 #define _PS_2B_CTRL      0x68A80
 #define _PS_1C_CTRL      0x69180
 #define   PS_SCALER_EN				REG_BIT(31)
+#define   PS_SCALER_TYPE_MASK			REG_BIT(30) /* icl+ */
+#define   PS_SCALER_TYPE_NON_LINEAR		REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 0)
+#define   PS_SCALER_TYPE_LINEAR			REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 1)
 #define   SKL_PS_SCALER_MODE_MASK		REG_GENMASK(29, 28) /* skl/bxt */
 #define   SKL_PS_SCALER_MODE_DYN		REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 0)
 #define   SKL_PS_SCALER_MODE_HQ			REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 1)
@@ -4057,6 +4060,7 @@
 #define   PS_SCALER_MODE_MASK			REG_BIT(29) /* glk-tgl */
 #define   PS_SCALER_MODE_NORMAL			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 0)
 #define   PS_SCALER_MODE_PLANAR			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 1)
+#define   PS_ADAPTIVE_FILTERING_EN		REG_BIT(28) /* icl+ */
 #define   PS_BINDING_MASK			REG_GENMASK(27, 25)
 #define   PS_BINDING_PIPE			REG_FIELD_PREP(PS_BINDING_MASK, 0)
 #define   PS_BINDING_PLANE(plane_id)		REG_FIELD_PREP(PS_BINDING_MASK, (plane_id) + 1)
@@ -4065,8 +4069,15 @@
 #define   PS_FILTER_PROGRAMMED			REG_FIELD_PREP(PS_FILTER_MASK, 1)
 #define   PS_FILTER_EDGE_ENHANCE		REG_FIELD_PREP(PS_FILTER_MASK, 2)
 #define   PS_FILTER_BILINEAR			REG_FIELD_PREP(PS_FILTER_MASK, 3)
+#define   PS_ADAPTIVE_FILTER_MASK		REG_BIT(22) /* icl+ */
+#define   PS_ADAPTIVE_FILTER_MEDIUM		REG_FIELD_PREP(PS_ADAPTIVE_FILTER_MASK, 0)
+#define   PS_ADAPTIVE_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PS_ADAPTIVE_FILTER_MASK, 1)
+#define   PS_PIPE_SCALER_LOC_MASK		REG_BIT(21) /* icl+ */
+#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */
+#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */
 #define   PS_VERT3TAP				REG_BIT(21) /* skl/bxt */
 #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
+#define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */
 #define   PS_PWRUP_PROGRESS			REG_BIT(17)
 #define   PS_V_FILTER_BYPASS			REG_BIT(8)
 #define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt */
-- 
2.39.2

