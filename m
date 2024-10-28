Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE29D9B290C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 08:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC3810E0C0;
	Mon, 28 Oct 2024 07:44:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FuOweQ7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85A710E364;
 Mon, 28 Oct 2024 07:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730101437; x=1761637437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+VnajePGJn0Rhz1VQ8RRir4y8c8EsosToMhEwOtdb4=;
 b=FuOweQ7G2sqRC/OlZcNULeCJMJcafxnSF6ASab43bw5WJ776qNb5kLKM
 gknlxpPjxPGbI0i0AKvnKV+4CdJWmXWx6S0yZRHripwSTlxDaNBHCx9FN
 5ajpE+3g21CpfjJG9E2y835xXWwUM86JNHfk6VotW4keRb4MXxbkS2s+A
 dxT1pHxKHRbh1lhoLtGScXQTOezjzaoGZC3XmQBlSLjLBgA76JOAR61jA
 DFjQ27e2FsnicyUO38m5xjgumlZFjNhpaX495KResLtRkGFYxa9KPQbKw
 WQNiikjqn6PpBJcC3aVGu7o2R3K+11YWR4sGxVNspfk43vXcQ9Ku/Z+Zc w==;
X-CSE-ConnectionGUID: CWBsBUR2QWicOX3impBavg==
X-CSE-MsgGUID: GCXmx5uvSKWtrwC8KNvAwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29799366"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="29799366"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 00:43:57 -0700
X-CSE-ConnectionGUID: q3rjBLyIRuGCUfGEGC13Kw==
X-CSE-MsgGUID: FP7GqVeoQAigF/BSJP3DTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81643555"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 28 Oct 2024 00:43:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/i914/xe3lpd: Increase bigjoiner limitations
Date: Mon, 28 Oct 2024 13:13:33 +0530
Message-Id: <20241028074333.182041-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028074333.182041-1-suraj.kandpal@intel.com>
References: <20241028074333.182041-1-suraj.kandpal@intel.com>
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

With 6k resolution support for a single crtc being added
bigjoiner will only come into picture when hdisplay > 6144

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e29619ba040..9dd4610c749a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1315,14 +1315,17 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
 	num_joined_pipes /= 2;
 
+	hdisplay_limit = DISPLAY_VER(i915) >= 30 ? 6144 : 5120;
+
 	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * 5120;
+	       hdisplay > num_joined_pipes * hdisplay_limit;
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-- 
2.34.1

