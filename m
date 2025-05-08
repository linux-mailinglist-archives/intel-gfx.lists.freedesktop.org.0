Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF753AAF75F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 12:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585E310E8DA;
	Thu,  8 May 2025 10:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cAUIlCt3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D503E10E8DA;
 Thu,  8 May 2025 10:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746698655; x=1778234655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hkLJBARw+rH6AETBHfNzRRtQbZ059nlPvQ3GXQXdW2o=;
 b=cAUIlCt38E7cjnnVFL0dtvOqtK89eVSSMs2FLvluJvAFY2L+hAQaH5bM
 VBOm8j/X+KlucOr3mt0H/LSK2NPPNMi+yUjA0i7H2PY5unpMl+tKvcRfr
 W8Q8s05BWqIfMRNqdlj1+DSeUYnJhgu3EnuD9haSmCtHfDFsq8maxLPvZ
 +qxmlQewserzUHEQlMQeTLa2wEgeUz50sYZDhCKooS1BJHmWH15BgehNG
 lYQsvtkmlAhAx3roIldh7xd6tXzl+wkiK3diAMmDUeeYFv1UpTfQHJMSp
 zLyqBigiLsdvpIueezoJtJdLJoB/eEG720N/Io3ouGFVIQch/cBEX301u g==;
X-CSE-ConnectionGUID: Fc0g76S3Q7+cJpBB3ZPIeg==
X-CSE-MsgGUID: Q8KJIOymT2uUFiJO1OJW/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="66003239"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="66003239"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:04:15 -0700
X-CSE-ConnectionGUID: 0hDJyzDHSCC9p+dmU9a98Q==
X-CSE-MsgGUID: c/u+fRNDQcS7Jw70r/ysyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="136634293"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.176])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:04:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 7/8] drm/i915: rename VLV IOSF SB ports parameter to
 unit_mask
Date: Thu,  8 May 2025 13:03:41 +0300
Message-Id: <f5f658aee064d8cf4e49ce07be0e7407a32c8d7f.1746698410.git.jani.nikula@intel.com>
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

Clarify what the parameter is about through proper naming.

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

