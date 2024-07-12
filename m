Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFC092FBF0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 15:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9230710ED22;
	Fri, 12 Jul 2024 13:57:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAS/52D4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A670310EACF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 13:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720792650; x=1752328650;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+cS76bFHrS/ZfX7pTDEigCmNZAdr2ris+WjUMTDGEV8=;
 b=NAS/52D4W3B5cxAKXUR0GeIhge5nbHTOuyHaM4rh0tzRQev5o8LVqV3Z
 xxo1OD/SszyGcOGr0zv+olorWTN8BZezG6e8JeAX81SziNO1tgFsZRiry
 WL+UEkoMsI/r2XAZoC0UW4+7GIESSsSPFj4QvbKbrsoZYYfekFQ3v40Gl
 0V9o3/FOxWOIKhGScU8yz5Mt98jLZ91iZMy9kYll85s9y8H87deUGY1gZ
 I93Iex6hYXAgy3rMX1uJ86a0pZ7YmSdysQBRkya3+h/x3W7CV82EBKUPt
 0ELHraQXWTAMFOgaUzx4mbQto8FF+5S0idwZLA0Lb86GTf1LPpc1DXiRB w==;
X-CSE-ConnectionGUID: zR8828m5RueorZ5iBr4JbQ==
X-CSE-MsgGUID: DX0LVEbXSoCs1c/mRjCLNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="28823549"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="28823549"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 06:57:14 -0700
X-CSE-ConnectionGUID: 25EV7SysQC22hh947V9E4A==
X-CSE-MsgGUID: NjdWZgWeQEu0P1ljpyfV3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="53485089"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 06:57:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/dp: Don't WARN on failed link-retrain modeset
Date: Fri, 12 Jul 2024 16:57:24 +0300
Message-ID: <20240712135724.660399-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240712135724.660399-1-imre.deak@intel.com>
References: <20240712135724.660399-1-imre.deak@intel.com>
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

After a bad link state is detected, the sink capabilities with which the
link was originally trained could have changed: for instance another
sink got connected or the retraining was forced after the rate/lane count
got decreased (as a fallback). In these cases the retraining modeset
fails as expected also printing a debug message, so don't WARN on it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0365fb1e77eae..1e43e32e05199 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5282,14 +5282,11 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 
 void intel_dp_link_check(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
 	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
 		ret = intel_dp_retrain_link(encoder, &ctx);
-
-	drm_WARN_ON(&i915->drm, ret);
 }
 
 void intel_dp_check_link_state(struct intel_dp *intel_dp)
-- 
2.44.2

