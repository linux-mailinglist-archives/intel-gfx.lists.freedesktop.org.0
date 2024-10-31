Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1789B7F67
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03B410E8DB;
	Thu, 31 Oct 2024 15:57:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYkHvCBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB2E10E8DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390226; x=1761926226;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SuWYeNGnHS13IjeM4pptEJHbK52WY9e6YhftRBgONo8=;
 b=QYkHvCBBPqCzpPY8CL36wsVd/gbykqEVly9bHRwaqi99K/RGUdBZptk6
 ZOM9N6r5PF75XWAOMbKoXDMfL/tByu0WiflKnY1LPmM45xbxJHLRm+eiQ
 v3fBUd/MlYdL4cu1vkKxd5XDoPw8/fpBRJWpERqsHStiFroOrPAValUcI
 66uEbLj1iVLZCNt7cju0RpiSiUkcIOMes1gVNxN+GGxcvZcTd+0KBR3yJ
 I5PvQYDkdWrl64vXaXgTIH0pjWWs5YBimInvBZ4n1/vLPsbC9w2YQmuln
 IGzmuhnlIdjBRsQ5NlQaYvUCgm3ybXDSP45Gc7h21qdYD/kA6SP7FkGMi w==;
X-CSE-ConnectionGUID: wcYLkDKdSOubuDt9ZRCuaw==
X-CSE-MsgGUID: 3LSiZD1PR/uwbWWuQtOVKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29575362"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29575362"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:57:06 -0700
X-CSE-ConnectionGUID: 7NzJJPC2Tvma26heCxmNww==
X-CSE-MsgGUID: 11Uq3kvjSa2fj8ymOyRW8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82791588"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 08:57:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 17:57:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915: Simplify xelpdp_is_only_pipe_per_dbuf_bank()
Date: Thu, 31 Oct 2024 17:56:46 +0200
Message-ID: <20241031155646.15165-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
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

Implement xelpdp_is_only_pipe_per_dbuf_bank() in a slightly
more straightforward way.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 98f9e01b2a1c..d3bbf335c749 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3256,19 +3256,19 @@ static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
 {
 	switch (pipe) {
 	case PIPE_A:
-		return !(active_pipes & BIT(PIPE_D));
 	case PIPE_D:
-		return !(active_pipes & BIT(PIPE_A));
+		active_pipes &= BIT(PIPE_A) | BIT(PIPE_D);
+		break;
 	case PIPE_B:
-		return !(active_pipes & BIT(PIPE_C));
 	case PIPE_C:
-		return !(active_pipes & BIT(PIPE_B));
+		active_pipes &= BIT(PIPE_B) | BIT(PIPE_C);
+		break;
 	default: /* to suppress compiler warning */
 		MISSING_CASE(pipe);
-		break;
+		return false;
 	}
 
-	return false;
+	return is_power_of_2(active_pipes);
 }
 
 static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
-- 
2.45.2

