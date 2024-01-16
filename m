Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 306A282EA6A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9FD10E40A;
	Tue, 16 Jan 2024 07:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E95110E40A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391818; x=1736927818;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XNYFBpbQA2GQi/fOtG8z/hkP6FeHT9G1LFMw36fhy9g=;
 b=mPZmaGtsUBopPgG/50mC6e9bKuUfR0UBMtfiGJC4M/d6g2VvShK57aXY
 4BK7mMXxXXTMlvl9lcgapYlv0m7JwuNjP0GhqVy7DQmkI9IjJe3fCGkJ7
 tKu6QV2XfYTioTXtzxgliiQ96omiz1oW7S8JAgPu1gaCi1y+EfpYUKXOj
 mBRoXMIi6PcqRGqFobMPr71ELiyMFOc3S6U4Au8hXFHQeQpou8WrU4Xr6
 FIsCPyh2VNiBKScsIAM1slOVrBTdODAKPNG5r9OPmhBaVnQfAE7p4DFNB
 m27PAijZDzb8zMGM+pmmw+wHztHRBqm0EHN32OdgePqzvsRc/0Eb8Xl0Y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948546"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948546"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:56:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776946975"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776946975"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:56:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:56:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 05/16] drm/i915: Disable the "binder"
Date: Tue, 16 Jan 2024 09:56:25 +0200
Message-ID: <20240116075636.6121-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that the GGTT PTE updates go straight to GSMBASE (bypassing
GTTMMADR) there should be no more risk of system hangs? So the
"binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
necessary, disable it.

My main worry with the MI_UPDATE_GTT are:
- only used on this one platform so very limited testing coverage
- async so more opprtunities to screw things up
- what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
  to finish?
- requires working command submission, so even getting a working
  display now depends on a lot more extra components working correctly

TODO: MI_UPDATE_GTT might be interesting as an optimization
though, so perhaps someone should look into always using it
(assuming the GPU is alive and well)?

v2: Keep using MI_UPDATE_GTT on VM guests

Cc: Paz Zcharya <pazz@chromium.org>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 86f73fe558ca..e83dabc56a14 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -24,7 +24,8 @@
 bool i915_ggtt_require_binder(struct drm_i915_private *i915)
 {
 	/* Wa_13010847436 & Wa_14019519902 */
-	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
+	return i915_run_as_guest() &&
+		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
 }
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
-- 
2.41.0

