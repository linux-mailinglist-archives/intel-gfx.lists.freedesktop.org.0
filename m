Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F18C7A45B18
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6788F10E8BB;
	Wed, 26 Feb 2025 10:01:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQZ8jakw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E4EA10E8BB;
 Wed, 26 Feb 2025 10:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740564101; x=1772100101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F/WO5Any8hpveXx6BaBUyTsszeI2FLtNvLh+6BY+wOU=;
 b=iQZ8jakw29amnXWiuHFsq7I7Vl0VubWoDsSOXmH5J/th+KPS5tbPd4ys
 4BhU0lHUpnjhy5LIBZMjb3+wAstzTebkzJWZKdm+r+KzNOLQtmRu/hJ+7
 y03rkAF9F/Q2uHp02qc9eDDX7cgyabjRxP8duEER6/f+Zqe+xxS1hUU44
 DWh0muguu0Rfpxl55Uh5Wf6UoycNJpfl86NBzurY7CoO24cHSFJUy+7Qx
 6hPnZV0aWa9sNkZBX5Il37sskT6eA1lZEOH4Z8R+U8i3GFqIkfdS6lfT2
 OtN1z0DymxYQ4ZieQmR+RUbllCqpnmNb3Qekjc+EgYEJWmCwaGJM3r6v/ g==;
X-CSE-ConnectionGUID: wQ8RIVljQvqeFTAD+IvYoA==
X-CSE-MsgGUID: 0WaE4lDnQ6Go7lGWGMd2cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="58938429"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="58938429"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:41 -0800
X-CSE-ConnectionGUID: IK+C6NfBSlaLMv/PeJoVvw==
X-CSE-MsgGUID: 2CoYfXREQWGaBQDkFKm4PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117578026"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/pfit: fix comment style for moved comments
Date: Wed, 26 Feb 2025 12:01:09 +0200
Message-Id: <d3bc49cf04473a0be07bab1ad7fd9df1f671307f.1740564009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740564009.git.jani.nikula@intel.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
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

Adhere to coding style.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 0a7609020c17..5e4a6ef2ff8d 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -569,9 +569,9 @@ void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->pch_pfit.enabled)
 		return;
 
-	/* Force use of hard-coded filter coefficients
-	 * as some pre-programmed values are broken,
-	 * e.g. x201.
+	/*
+	 * Force use of hard-coded filter coefficients as some pre-programmed
+	 * values are broken, e.g. x201.
 	 */
 	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
 		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
@@ -591,8 +591,10 @@ void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	/* To avoid upsetting the power well on haswell only disable the pfit if
-	 * it's in use. The hw state code will make sure we get this right. */
+	/*
+	 * To avoid upsetting the power well on haswell only disable the pfit if
+	 * it's in use. The hw state code will make sure we get this right.
+	 */
 	if (!old_crtc_state->pch_pfit.enabled)
 		return;
 
@@ -657,8 +659,10 @@ void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, PFIT_CONTROL(display),
 		       crtc_state->gmch_pfit.control);
 
-	/* Border color in case we don't scale up to the full screen. Black by
-	 * default, change to something else for debugging. */
+	/*
+	 * Border color in case we don't scale up to the full screen. Black by
+	 * default, change to something else for debugging.
+	 */
 	intel_de_write(display, BCLRPAT(display, crtc->pipe), 0);
 }
 
-- 
2.39.5

