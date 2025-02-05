Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C11A29D86
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 00:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A5B10E21B;
	Wed,  5 Feb 2025 23:28:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VXUKGrzs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6A410E21B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2025 23:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738798080; x=1770334080;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SBC4ZEJOP9wpYsAD06iL0qYTjUacQo17lcKr/BaxlRw=;
 b=VXUKGrzs08/7bD7R3yJxW6ENPKnXnqbJUQ1aiXxsCmKGEgn96JMFH9OJ
 TjrESEzoHt5JpYowb5mt2Qlyg70SzfTwVM5KIAzYHjjuaevd5VLfF5G0P
 2z3v4ZZABNiZrXPz85DqnwNy4hjYQc5wRHIDCATiLFz2fQMWjHjYEmv3c
 vCrTs7hAM1otNW5JfOodn3ujH+6NiQfQevz7DJZWpP4bMhUxNEWzSmaXH
 tihx4C6vwucBhKC2a9gZ8LCyGBklMvs/FM+yqq334hNsNTkyG+JQqq/Hr
 Bn9sygdGLI5pNc7O9HKsGnyfsZ296jJkpo24GLTujdKraydQHCsuy83j+ w==;
X-CSE-ConnectionGUID: OmU5SFlERYe2JU96C7NmEQ==
X-CSE-MsgGUID: cEhllU1mQY6ekva5U1b2WA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39281909"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="39281909"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 15:27:59 -0800
X-CSE-ConnectionGUID: kqPyAk10QZCjrHSX83r/Sw==
X-CSE-MsgGUID: P8TCbjyFQXGffyl8pa755g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="110944342"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 15:27:57 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp_mst: Fix getting display pointer in
 intel_dp_mst_compute_min_hblank()
Date: Thu,  6 Feb 2025 01:28:55 +0200
Message-ID: <20250205232855.3017421-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

The MST intel_connector::encoder pointer is NULL if the connector hasn't
been enabled before, so it can't be used to retrieve the display
pointer. Use instead the connector pointer directly, which also
simplifies things.

Fixes: a5ebe00c2ace ("drm/i915/dp: Guarantee a minimum HBlank time")
Reported-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f58d56a1ea03a..1d43c2574e616 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -213,8 +213,7 @@ static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
 					    struct intel_connector *connector,
 					    int bpp_x16)
 {
-	struct intel_encoder *encoder = connector->encoder;
-	struct intel_display *display = to_intel_display(encoder);
+	struct intel_display *display = to_intel_display(connector);
 	const struct drm_display_mode *adjusted_mode =
 					&crtc_state->hw.adjusted_mode;
 	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
-- 
2.44.2

