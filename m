Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 855E2785E1D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3736310E488;
	Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6275710E424;
 Wed, 23 Aug 2023 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810555; x=1724346555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQvshacgWLZYQh3bIVBJHujYi9ED1Vfk+HGL42hyZSA=;
 b=eY9jpd5eK39EoLOCHAOL2FPWGh7V6kI7i7LJKRusntSQgywjFHk22i8p
 Ry6EgYtilCPXL0mMjspOtXkm7J7z072rAeFe1Z4JOfUGltlrEqzjru7IB
 8TL35guK4mcm1juvMaHqkZFUktFDnm8BxlyubQ0EXS18LF3P/OBPYPLh4
 sEgt5nEouUGobgt45pNZbbFIN8L4aPowEGSNJYN6tl898sZPL5uVa+xtm
 qXQC8akAqByWI2zvkvGpXECjUaQPDtlEH85ipphL5ZyakKo9cjwJMD+LB
 6ovF0p+nTluH55WSQQkK5iqFGtpDVqXhDNQZNpsBJRP9KlfJ8/tz3/Y9F A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147458"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147458"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204756"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204756"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:06:59 -0700
Message-Id: <20230823170740.1180212-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/42] drm/i915: Start using plane scale factor
 for relative data rate
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
Cc: Garg@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

BSpec clearly instructs us to use plane scale factor when calculating
relative data rate to be used when allocating DDB blocks for each plane.
For some reason we use scale factor for data_rate calculation, which is
used for BW calculations, however we are not using it for DDB calculations.
So lets fix it as described in BSpec 68907.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230719104833.25366-1-stanislav.lisovskiy@intel.com
(cherry picked from commit a86c75dcdd0374444514c1e40411177ff7afe9bd)
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index edee71664332..cb60165bc415 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -217,6 +217,7 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int width, height;
+	unsigned int rel_data_rate;
 
 	if (plane->id == PLANE_CURSOR)
 		return 0;
@@ -246,7 +247,11 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 		height /= 2;
 	}
 
-	return width * height * fb->format->cpp[color_plane];
+	rel_data_rate = width * height * fb->format->cpp[color_plane];
+
+	return intel_adjusted_rate(&plane_state->uapi.src,
+				   &plane_state->uapi.dst,
+				   rel_data_rate);
 }
 
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
-- 
2.40.1

