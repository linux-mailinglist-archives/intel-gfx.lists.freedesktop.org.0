Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB74AB3B7A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15EDE10E43A;
	Mon, 12 May 2025 14:57:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SOZDRjKW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF82610E438;
 Mon, 12 May 2025 14:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747061862; x=1778597862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kMpJ8ZKBmtR67kxfnbhjjBI5UD4TX8IajKO55zhHoMA=;
 b=SOZDRjKWT9vZxP2u/u4p2d6HZtCKE6Xr9Lbm9zwzm6rCya0BTpqdSPjo
 piGFS1U4kDmsqwkhmn1zSlwWlZgSmEoxVu0zhH9Kw1pFwXXyjpgar1fFV
 OlCLH7+5IQ3JSj7NcXYms+RNCijIQlf3o09e/q14+TPweYEkP0KdYT1OT
 KwoSsExsIAPJwbofb58ZWBPiZD2XLEb1qiyEhTJOs1m6YNqVmQiuEKH+q
 nNA3HdZDa+vi2Va7vfWIBWmGU3F6HVGAq53jt8Ndpmlkde/ix0kESlT4v
 lZzIrEp1kzxxAz8eshLSY0gayzkIye7gA3hx3cEIP3AVy7m6DsVjdngO1 w==;
X-CSE-ConnectionGUID: TRNM/afjQSC/NHk/1wGK2Q==
X-CSE-MsgGUID: IpDOybuSQ9W479/HkfeOMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60264720"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="60264720"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:42 -0700
X-CSE-ConnectionGUID: AfJGgex6QCKdSD8F7SGrjQ==
X-CSE-MsgGUID: fV2m4+JsT92aAe5fBH2Isg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137857593"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 8/8] drm/i915: ensure correct VLV IOSF SB units have been
 get/put
Date: Mon, 12 May 2025 17:56:59 +0300
Message-Id: <be6f029adf7148198821e5fe01dcf5d5406aa1fe.1747061743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747061743.git.jani.nikula@intel.com>
References: <cover.1747061743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add some extra paranoia to check correct use of the VLV IOSF SB
get/put/read/write.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h    |  1 +
 drivers/gpu/drm/i915/vlv_iosf_sb.c | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d0e1980dcba2..93b4c504b710 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -230,6 +230,7 @@ struct drm_i915_private {
 	/* VLV/CHV IOSF sideband */
 	struct {
 		struct mutex lock; /* protect sideband access */
+		unsigned long locked_unit_mask;
 		struct pm_qos_request qos;
 	} vlv_iosf_sb;
 
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index c8f8589ee0be..f4b435555f3b 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -65,12 +65,18 @@ void vlv_iosf_sb_get(struct drm_device *drm, unsigned long unit_mask)
 		__vlv_punit_get(i915);
 
 	mutex_lock(&i915->vlv_iosf_sb.lock);
+
+	i915->vlv_iosf_sb.locked_unit_mask |= unit_mask;
 }
 
 void vlv_iosf_sb_put(struct drm_device *drm, unsigned long unit_mask)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
+	i915->vlv_iosf_sb.locked_unit_mask &= ~unit_mask;
+
+	drm_WARN_ON(drm, i915->vlv_iosf_sb.locked_unit_mask);
+
 	mutex_unlock(&i915->vlv_iosf_sb.lock);
 
 	if (unit_mask & BIT(VLV_IOSF_SB_PUNIT))
@@ -182,6 +188,8 @@ u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 add
 	if (drm_WARN_ONCE(&i915->drm, !port, "invalid unit %d\n", unit))
 		return 0;
 
+	drm_WARN_ON(&i915->drm, !(i915->vlv_iosf_sb.locked_unit_mask & BIT(unit)));
+
 	vlv_sideband_rw(i915, devfn, port, opcode, addr, &val);
 
 	return val;
@@ -199,6 +207,8 @@ int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 ad
 	if (drm_WARN_ONCE(&i915->drm, !port, "invalid unit %d\n", unit))
 		return -EINVAL;
 
+	drm_WARN_ON(&i915->drm, !(i915->vlv_iosf_sb.locked_unit_mask & BIT(unit)));
+
 	return vlv_sideband_rw(i915, devfn, port, opcode, addr, &val);
 }
 
-- 
2.39.5

