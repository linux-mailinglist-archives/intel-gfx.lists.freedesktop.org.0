Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49CE6EF5D4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E99B210E9B0;
	Wed, 26 Apr 2023 13:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBBAE10E9A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517042; x=1714053042;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=juIg7yORQxVRGZZe929+16wzTQX7ty5rpdcQDOkFErE=;
 b=ln6RiTBwYfiE4GwdJGmdW9VC4ZrdNr3MPaphn6knC+xLxcRmZ1HG9Qv4
 EOZ3g65M+r8kVC6rjbilkTG14OWlbSannO3wksR9noISC2FiiGDf41mpc
 QQWjiuoj9bsxtCLv1dfo0bJrV9EUqNVUWrkKDmv976b9KOvMtmgezYeqB
 71qzywqe6NjII1MmY1L5wwcZvGQp9CImkugjyB7LrTNYH8UiFmAw277x0
 y/9Bt4OY27FxyweP0VIfwpjlbeRCu8Cu/nOy2uzKNN9X6rDbQzMeuDybD
 A+47kcDGAvlfRZUk4TM3sHbD/m3lJI1jnJ8l20RiXT8bcbRO4X+u/mNRH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436845"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436845"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514280"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514280"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:19 +0300
Message-Id: <20230426135019.7603-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915: Define more PS_CTRL bits
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
index f5ae8d1eb6ff..e08bb15eddcf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4055,6 +4055,9 @@
 #define _PS_2B_CTRL      0x68A80
 #define _PS_1C_CTRL      0x69180
 #define   PS_SCALER_EN				REG_BIT(31)
+#define   PS_SCALER_TYPE_MASK			REG_BIT(30) /* icl+ */
+#define   PS_SCALER_TYPE_NON_LINEAR		REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 0)
+#define   PS_SCALER_TYPE_LINEAR			REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 1)
 #define   SKL_PS_SCALER_MODE_MASK		REG_GENMASK(29, 28) /* skl/bxt */
 #define   SKL_PS_SCALER_MODE_DYN		REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 0)
 #define   SKL_PS_SCALER_MODE_HQ			REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 1)
@@ -4062,6 +4065,7 @@
 #define   PS_SCALER_MODE_MASK			REG_BIT(29) /* glk-tgl */
 #define   PS_SCALER_MODE_NORMAL			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 0)
 #define   PS_SCALER_MODE_PLANAR			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 1)
+#define   PS_ADAPTIVE_FILTERING_EN		REG_BIT(28) /* icl+ */
 #define   PS_BINDING_MASK			REG_GENMASK(27, 25)
 #define   PS_BINDING_PIPE			REG_FIELD_PREP(PS_BINDING_MASK, 0)
 #define   PS_BINDING_PLANE(plane_id)		REG_FIELD_PREP(PS_BINDING_MASK, (plane_id) + 1)
@@ -4070,8 +4074,15 @@
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

