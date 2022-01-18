Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8C3492298
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8BD10EC2D;
	Tue, 18 Jan 2022 09:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE59E10EC2D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497839; x=1674033839;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BPrncNzp1p6eZLXQcLu3kT67rIvxfx4Mw5BO+xt9Tdg=;
 b=N1ttbosoTfud1ssaPrmPrL/QcRnjgdAjd7n/vhoSeooQSoMuGBlY3fEp
 QGkdDwaJVJndM1aiReXOlwuKW6Dfb+dtsPF3mMeszNlHFB2U6EfcsJ6uf
 tThexVRwmkCDxkCg8j2KY+v8oKxkK/h3UmqosF+LW91GgEDh/qvSH7dgC
 GvKRO/1NdVqoMAZWyV5773nDlUiYYbkF7tCJc0E84cL2glmN/QhqgewGO
 WiEkA6CEOmJBWoMbq8GhQMDd5diFoVeX5xb9lGLG6/uA3TdfRM2C4QZWW
 8WPuM9L1TOGiBa+r2UwPPk1AWJ5SKKufAoKQ1BJRK4K34VYUdO+3qmb6T A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="232133282"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="232133282"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:23:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="560612311"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2022 01:23:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:23:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:40 +0200
Message-Id: <20220118092354.11631-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/15] drm/i915: Drop pointless dev_priv argument
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

skl_ddb_entry_init_from_hw() has no need for dev_priv.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 62fde21fac39..7185af0ff205 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4289,8 +4289,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	return max(num_active == 1 ? 32 : 8, min_ddb_alloc);
 }
 
-static void skl_ddb_entry_init_from_hw(struct drm_i915_private *dev_priv,
-				       struct skl_ddb_entry *entry, u32 reg)
+static void skl_ddb_entry_init_from_hw(struct skl_ddb_entry *entry, u32 reg)
 {
 	entry->start = REG_FIELD_GET(PLANE_BUF_START_MASK, reg);
 	entry->end = REG_FIELD_GET(PLANE_BUF_END_MASK, reg);
@@ -4311,7 +4310,7 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
 	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
 	if (plane_id == PLANE_CURSOR) {
 		val = intel_uncore_read(&dev_priv->uncore, CUR_BUF_CFG(pipe));
-		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
+		skl_ddb_entry_init_from_hw(ddb_y, val);
 		return;
 	}
 
@@ -4325,7 +4324,7 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
-		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
+		skl_ddb_entry_init_from_hw(ddb_y, val);
 	} else {
 		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
 		val2 = intel_uncore_read(&dev_priv->uncore, PLANE_NV12_BUF_CFG(pipe, plane_id));
@@ -4334,8 +4333,8 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
 		    drm_format_info_is_yuv_semiplanar(drm_format_info(fourcc)))
 			swap(val, val2);
 
-		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
-		skl_ddb_entry_init_from_hw(dev_priv, ddb_uv, val2);
+		skl_ddb_entry_init_from_hw(ddb_y, val);
+		skl_ddb_entry_init_from_hw(ddb_uv, val2);
 	}
 }
 
-- 
2.32.0

