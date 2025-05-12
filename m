Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2D2AB3B79
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E8810E439;
	Mon, 12 May 2025 14:57:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dM/8MIus";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6E310E434;
 Mon, 12 May 2025 14:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747061858; x=1778597858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F21VTc1kuVxeKgs38PSNmFMPXD+Z8HBUIcvrN1t4CK4=;
 b=dM/8MIustOMtiEzJEOZRJJ9YYFVLRuCV0KO7FnluXdHTu4iMMX+BKm95
 xLfUHevPqXBdT52SOUo4BbdO9/pv9zDogytErwXjhbx4Fo77nPHfocQwr
 X+pG3CYpZVYQvqXMCEcYasue6SwWfpg08yyY8Bqk0m0M+uyX23PZal1vy
 etHLI+DhSnmSxvFrInMwfJ/O4CMXgn0C9dcFkjlD5mgYBSTCIBlWA6FFr
 gNOKVu8KcNnIzfyMkBdfSYh8GpK7afnAov89YgFe6HnJ+AU0imDG4mrde
 BGwu6zBhl/bZsGFsSd8PP2vETYX7g/vjk9EbNfCbZVIjk4oip+b+H4kA/ A==;
X-CSE-ConnectionGUID: QPW9N+S7TmeS63aDATXSwA==
X-CSE-MsgGUID: OuIs1bgQTUaAVENx8rPFpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60264712"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="60264712"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:38 -0700
X-CSE-ConnectionGUID: 5nHCXwsFRmamFZX+G+08/Q==
X-CSE-MsgGUID: x51549BQR++vMis3ES5O/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137857560"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 7/8] drm/i915: rename VLV IOSF SB ports parameter to
 unit_mask
Date: Mon, 12 May 2025 17:56:58 +0300
Message-Id: <b1be9a4089dfbf48ea1434944a4841d2ac4c4acc.1747061743.git.jani.nikula@intel.com>
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

Clarify what the parameter is about through proper naming.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/vlv_iosf_sb.c | 8 ++++----
 drivers/gpu/drm/i915/vlv_iosf_sb.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index 9101b5c97bf1..c8f8589ee0be 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -57,23 +57,23 @@ static void __vlv_punit_put(struct drm_i915_private *i915)
 	iosf_mbi_punit_release();
 }
 
-void vlv_iosf_sb_get(struct drm_device *drm, unsigned long ports)
+void vlv_iosf_sb_get(struct drm_device *drm, unsigned long unit_mask)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
-	if (ports & BIT(VLV_IOSF_SB_PUNIT))
+	if (unit_mask & BIT(VLV_IOSF_SB_PUNIT))
 		__vlv_punit_get(i915);
 
 	mutex_lock(&i915->vlv_iosf_sb.lock);
 }
 
-void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports)
+void vlv_iosf_sb_put(struct drm_device *drm, unsigned long unit_mask)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
 	mutex_unlock(&i915->vlv_iosf_sb.lock);
 
-	if (ports & BIT(VLV_IOSF_SB_PUNIT))
+	if (unit_mask & BIT(VLV_IOSF_SB_PUNIT))
 		__vlv_punit_put(i915);
 }
 
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
index 6c9b94922de9..e2fea29a30ea 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -28,8 +28,8 @@ enum vlv_iosf_sb_unit {
 void vlv_iosf_sb_init(struct drm_i915_private *i915);
 void vlv_iosf_sb_fini(struct drm_i915_private *i915);
 
-void vlv_iosf_sb_get(struct drm_device *drm, unsigned long ports);
-void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports);
+void vlv_iosf_sb_get(struct drm_device *drm, unsigned long unit_mask);
+void vlv_iosf_sb_put(struct drm_device *drm, unsigned long unit_mask);
 
 u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr);
 int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
-- 
2.39.5

