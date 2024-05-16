Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3BB8C7C54
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 20:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D1210ED98;
	Thu, 16 May 2024 18:27:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vo2fVHCd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8A910ED98
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 18:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715884038; x=1747420038;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0zic5FlstVUmmTEvJ0HXs6oj+mqWlx8Vvdx/7yi0OXQ=;
 b=Vo2fVHCd4+laGN+SsWexreEpddk0j9Kp1Z6NbbBRzOVHd5Vr8gC7y0Wr
 tp2rk4X85rxY8UVcFqXlVU1m9mLplKddrfI/flyK/x+vFVsb0U/hndicn
 zjptkJwbL5y9EXOcWsU8Ldl5cLi2s3jW2/0skTFcnKV5trePyVDVUML/5
 YxEs91FK7HlS6m7zHFHdvwB7oryjuF4mwM02BdHlKDqBxSWaCH9B6Ggqq
 ig58mm11GDRgA0gslF4e19JC+Ge1jKnAgMrZLbj22SA8YprATNPBMVP+J
 bO1aa9laQLQK1zgJASH7bGOMYBrcbYX7HIlo1CnHWmDya/xmrjxQDdYnE g==;
X-CSE-ConnectionGUID: 2vwEY4GKRTmXYwsbtE8k3g==
X-CSE-MsgGUID: P9u8i1k1QMWgxAd4sOKw7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15848851"
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="15848851"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 11:27:18 -0700
X-CSE-ConnectionGUID: IuhF3XmySfa22gjBQiQ+qg==
X-CSE-MsgGUID: 5+mWzzMkTy+yKG3yV2f/fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="31529377"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 11:27:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 21:27:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Bump max TMDS bitrate to 6 Gbps on ADL/DG2+
Date: Thu, 16 May 2024 21:27:15 +0300
Message-ID: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bspec lists the mas TMDS bitrate as 6 Gbps on ADL/DG2.
Bump our limit to match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0faf2afa1c09..bd0ba4edcd1d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1784,7 +1784,9 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int max_tmds_clock, vbt_max_tmds_clock;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 13)
+		max_tmds_clock = 600000;
+	else if (DISPLAY_VER(dev_priv) >= 10)
 		max_tmds_clock = 594000;
 	else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv))
 		max_tmds_clock = 300000;
-- 
2.44.1

