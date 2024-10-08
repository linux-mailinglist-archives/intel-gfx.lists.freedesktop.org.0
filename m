Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 476E5994143
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2FF310E49C;
	Tue,  8 Oct 2024 08:24:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4Cdnn1N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A04E10E49C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375847; x=1759911847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MB1C1YKOu8yUn46R5cjt/XvGioZPhEan3C9BeeOoGyw=;
 b=I4Cdnn1NiB0dBl2kukRZSscLew7wkWb6v7kt1z8OGj1ZHGFOrjFFoXzO
 rIZi8yTKIj1I2Z4CEANqqMGH0a742MePADhkTAPw8ZMHbLd/u82IXJhaq
 FIq+loqVQTAH4MJhEqZaR3oU57K7PiHUXYtYAdwuGTqQgcT3r/BP5Ad2g
 J1UBJZaOv6whMSL3gJxQpdduRbl655Av3ao7xJfg+rNtQkpKk9LbQwYJ7
 xTjTloMiwMLunO1c2AxrWIzrdh/+/bXZmoa0+yniKz0F0kjC36Y27klhz
 j4a/qbYkgHaLqaRqD47rECjNQsGtSPSE8wud4wBbf+ST0cj0Yb1M9pfe/ g==;
X-CSE-ConnectionGUID: 4cQmhfB8SnOWj/6h03KI6w==
X-CSE-MsgGUID: iiYKERFnTrautbSAuzhMCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079145"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079145"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:24:07 -0700
X-CSE-ConnectionGUID: 79qcr5EVTXyzNCrFXEOf4Q==
X-CSE-MsgGUID: W6lqJNS+STy93/33Z/qyUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755901"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:24:05 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 9/9] drm/i915/display: update audio bw calculations for MTL
Date: Tue,  8 Oct 2024 11:23:27 +0300
Message-Id: <20241008082327.342020-10-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
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

Update the reference overhaed values for audio bw calculations
for MTL onwards

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8f04796f3eb8..c245a5f9c4c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3025,10 +3025,15 @@ intel_dp_audio_compute_bw_limits(struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int hblank_bytes_avail_overhead = 64;
-	int hblank_bytes_req_overhead = 80;
+	int hblank_bytes_req_overhead;
 	int hblank_slots_lanes;
 	int line_freq_khz;
 
+	if (DISPLAY_VER(i915) >= 14)
+		hblank_bytes_req_overhead = 0;
+	else
+		hblank_bytes_req_overhead = 80;
+
 	intel_dp_compute_audio_bwparams(crtc_state, &line_freq_khz,
 					&hblank_slots_lanes);
 	drm_dbg_kms(&i915->drm,
-- 
2.34.1

