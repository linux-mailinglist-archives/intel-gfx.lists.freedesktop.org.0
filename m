Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9E0C6F1F7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 15:04:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D597110E632;
	Wed, 19 Nov 2025 14:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5HgQehK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3547810E631;
 Wed, 19 Nov 2025 14:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763561085; x=1795097085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M8x7HDBH3APEYWvgxVJ16Zd6OIWZsFedTzr+FUULvZE=;
 b=A5HgQehK87jBiOQ2xndZfUYZYndZshfCHT/MvLhumHhdhLEkHqvHf/8b
 tlcJMUkDiZPOL9jyg6Vg6z6GF9yU45RRkB0OOd/bGqGrKWCbYUbcpR//o
 RxCLyVsp/ifpRaZq2xrq7EDL0UrIZ3wJxF765rSI6ieFWPlh4vk+UqXWH
 DUjeprtKYP0dZ3xTa1n5JH3fG2DqqYDNGAQDAGmMd1XuWm04uvWoujtUy
 5lsIZ4qYOFHfAkqlyyO+wQneHsVCjxlU6DRHFstml/pcQrMbok6z90p0U
 muGV6buG8vTwZEaEXlagn6LxIcpMeIUHhl174vqSNofIWNk/wQl5e2XVT Q==;
X-CSE-ConnectionGUID: zHteZs9ZSO+TH4nn5JVAHg==
X-CSE-MsgGUID: kbF1+5ngTECPMfSVSqR5Nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="91077079"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="91077079"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:45 -0800
X-CSE-ConnectionGUID: nbK8Ue5/QfeLGnZRNHyhuA==
X-CSE-MsgGUID: xOEBM4VLQXiGnDsnoLhs0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191191870"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:43 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/5] drm/i915/alpm: Disable LOBF around transitioning for
 LRR/seamless MN
Date: Wed, 19 Nov 2025 19:21:52 +0530
Message-ID: <20251119135152.673276-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
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

When enabling LRR/seamless MN disable LOBF first and re-enable
afterwards.
- pre_plane_update: if LOBF was enabled, disable LOBF before the
  update_lrr/update_m_n transition.
- post_plane_update: Re-enable LOBF after the transition.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ecbdc506a1fc..9ffccfdd0f0c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1018,7 +1018,9 @@ static bool intel_crtc_lobf_enabling(const struct intel_crtc_state *old_crtc_sta
 	if (!new_crtc_state->has_psr)
 		return false;
 
-	return is_enabling(has_lobf, old_crtc_state, new_crtc_state);
+	return is_enabling(has_lobf, old_crtc_state, new_crtc_state) ||
+	       (new_crtc_state->has_lobf &&
+		(new_crtc_state->update_lrr || new_crtc_state->update_m_n));
 }
 
 static bool intel_crtc_lobf_disabling(const struct intel_crtc_state *old_crtc_state,
@@ -1027,7 +1029,9 @@ static bool intel_crtc_lobf_disabling(const struct intel_crtc_state *old_crtc_st
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(has_lobf, old_crtc_state, new_crtc_state);
+	return is_disabling(has_lobf, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->has_lobf &&
+		 (new_crtc_state->update_lrr || new_crtc_state->update_m_n));
 }
 
 #undef is_disabling
-- 
2.45.2

