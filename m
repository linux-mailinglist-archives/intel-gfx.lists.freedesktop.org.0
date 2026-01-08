Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1F2D02C8B
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 13:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3679F10E708;
	Thu,  8 Jan 2026 12:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n2p3gmR+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D3510E70B;
 Thu,  8 Jan 2026 12:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767877066; x=1799413066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OOlFXSJROSKmBNjxzxyX7a7eBe0kM+ghJUAYIa+SFfA=;
 b=n2p3gmR+FLiXzLQcSxlQi8suqvSvgr+mezfyDCv24FRz/9I4wXb4ndlg
 BgZ7UgAR8E1AUIMj3AiAuEeFpm547K4N5Wo7B6Y8nkbpb5DFFrujKhel+
 VA7BbgFR63fCPrykCwO5zVBwppMYdQRNOsy08RL9TNrQS2qepNH3VECyU
 EWasOWUUzMYYPYLB/0MDbmjOw31F1ZKIetz+zwPcUbgVTy8rn01ihgXbH
 3cByhc/Oke1oKRATLK6OqR3xMN7KfK4F4fQ2f+R9Qm8BpKSOZ4rCedReZ
 +f7bW81mhjQ1aBkUtciBHt2z+/EsDaBgJ3y9dkr2nh0JWVRMlyxMKlzLY Q==;
X-CSE-ConnectionGUID: 5cZeuX68Tsi7Ys2fGpaa5Q==
X-CSE-MsgGUID: ub2Dti5kSaS040EaflYsQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80617955"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="80617955"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:57:45 -0800
X-CSE-ConnectionGUID: 7sIpxaoLQKSf1OALiMMkyw==
X-CSE-MsgGUID: CGAq4mQ7QIemrzMtDYb6Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="208038836"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:57:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/dp: Avoid joiner for eDP if not enabled in VBT
Date: Thu,  8 Jan 2026 18:11:41 +0530
Message-ID: <20260108124141.1407760-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260108124141.1407760-1-ankit.k.nautiyal@intel.com>
References: <20260108124141.1407760-1-ankit.k.nautiyal@intel.com>
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

For eDP, enable the Pipe Joiner feature only if VBT explicitly allows it.
If VBT disables the feature, skip joiner for eDP, even if the hardware
supports it.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2dadbf7e8922..649d1018af1b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -508,11 +508,16 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
 
 	/* eDP MSO is not compatible with joiner */
 	if (intel_dp->mso_link_count)
 		return false;
 
+	if (intel_dp_is_edp(intel_dp) &&
+	    !connector->panel.vbt.edp.pipe_joiner_enable)
+		return false;
+
 	return DISPLAY_VER(display) >= 12 ||
 		(DISPLAY_VER(display) == 11 &&
 		 encoder->port != PORT_A);
-- 
2.45.2

