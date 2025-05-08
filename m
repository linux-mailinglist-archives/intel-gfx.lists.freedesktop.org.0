Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDBEAAF760
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 12:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5321310E8E0;
	Thu,  8 May 2025 10:04:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZ5XgOi0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB63910E8D8;
 Thu,  8 May 2025 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746698659; x=1778234659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xTDIiLjHk8CmAwVgOXEoQV4dTnE9EJ/1pnqqrNUq8WU=;
 b=PZ5XgOi0WNfUeHL2IynRoyXluiu2Z3gm98MQ7wFsQgDXA42BixhD84/A
 hO60w38KkIQrs28jo3nazY5PURbaVvGnymg3cJ/vRP8pBUGIDyHRKqezM
 7dNW3FXuAn2BkqoihXp+sTs03u+1eJkuH9bdxK97148wUzhq9pQT8aeaS
 80jq6n3QwUpVu81NmiDQYLYE7/xdcsoUteTIhv5IKVWOrQVy8tx/WJdp9
 Dre+IleiZtam4436ZO+5ASkpicGDL6hkHeFa2TUmgK3Xok5p9IJ16VrM2
 ihcb5JH2SexOjN7XcWwFa4d32gdgo4nV7hT53irc6h9bROB04T3XnX5br Q==;
X-CSE-ConnectionGUID: 2OrFcEihQXyn+We8Y2iEIw==
X-CSE-MsgGUID: uP/JTHxOSd+k+EdiSivsVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="66003256"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="66003256"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:04:19 -0700
X-CSE-ConnectionGUID: 5RGj0hVnTzm9/qrxbGGa8Q==
X-CSE-MsgGUID: jj78Hm1iRgyBWqGwv4sA0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="136634297"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.176])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:04:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 8/8] drm/i915: ensure correct VLV IOSF SB units have been
 get/put
Date: Thu,  8 May 2025 13:03:42 +0300
Message-Id: <6c3adb1bb4428ec472bcddef9bb973996877b72d.1746698410.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746698410.git.jani.nikula@intel.com>
References: <cover.1746698410.git.jani.nikula@intel.com>
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

Add some extra paranoia to check correct use of the VLV IOSF SB
get/put/read/write.

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

