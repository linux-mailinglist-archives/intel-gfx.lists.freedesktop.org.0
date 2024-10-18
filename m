Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8789A487D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD7710E9A8;
	Fri, 18 Oct 2024 20:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YEpy4oO3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A2810E9AC;
 Fri, 18 Oct 2024 20:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284595; x=1760820595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BWjSRRwMvtz851UbvKh5g4kBb5j9EaZ03BLUR8hbJyc=;
 b=YEpy4oO3rE7HcH3QvabUX8LDfCvwNC5BQQ+DzwbChAf9xISCZ5r2cjlm
 DuNEkkeM4owj/j+LTVYBfv0ZT2dYm9fziFUKgW6vNma+MNPjj2lrbYCQt
 EAXtD6G/L5IB2WPCPqoAs9Z0RAeCyP/iWjK9HqE8i5YRwpLS4n5xZRTKG
 PUVcRO8lMIS2iEC9Etovkh3DFnSDFqJ0RPkBjNmn9RFSj8eTvB7J4VSP+
 NXf2gmD+blxqbMjNUwnwr07eOiqblKixOHbRfJUTAXQJV64HV53cSqyET
 +eSFRjNv70wvTkAbL+Av7PKnU5BJENPphQSe1WYfg3ORB+Oe6opU0iSJF A==;
X-CSE-ConnectionGUID: e9p9HChJSKKHwjybXX5wmQ==
X-CSE-MsgGUID: cHNdMx2/Tpiry2iaVIv35g==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240195"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240195"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:54 -0700
X-CSE-ConnectionGUID: J3dU9nJrRnqP6edXn0kpYA==
X-CSE-MsgGUID: 0ZdZzEHQSfejizu/RHW4+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798973"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:54 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 10/12] drm/i915/xe3lpd: Increase bigjoiner limitations
Date: Fri, 18 Oct 2024 13:49:39 -0700
Message-ID: <20241018204941.73473-11-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

With 6k resolution support for a single crtc being added
bigjoiner will only come into picture when hdisplay > 6144

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index be21e2743801..0093bd43c712 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1314,14 +1314,16 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
+	hdisplay_limit = DISPLAY_VER(i915) >= 30 ? 6144 : 5120;
 	num_joined_pipes /= 2;
 
 	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * 5120;
+	       hdisplay > num_joined_pipes * hdisplay_limit;
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-- 
2.45.0

