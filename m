Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EEE98AA90
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A26D10E129;
	Mon, 30 Sep 2024 17:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="js9W9u84";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB6910E129;
 Mon, 30 Sep 2024 17:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715888; x=1759251888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+VAAm3PoM6PrqjNQGMM8SHE+DXYdu6a6zzqaOTGjFQ=;
 b=js9W9u84TtaiNaSWuJG7QoFz1C7//m/sz2dv8936I36SdBkdvNYCqucv
 nB5IhYtOjv8jdek5DfkK+0DRbq1ZAcq67RvntkGLKj30zrFtFcOxM2eQX
 AgZS5NzSUgUHuksValUqR/R16i9Aq8Jwn8E2W+NcatyngYO/m5dpvbc66
 Kl7C/FgcIGFLnCB6ZBz676eZ6rmlaNfqC0QIryWN5/4gqEUkrWVK768f7
 BpxidPtJ+x1M05GbrIoU2UukndB8XTGDaruiZnEiAIxSLeYkPlSQtO6sA
 sfqTgfPgLqyMGfzOynMmEA/frp2Z/DNwU0i/26eq8RtRLHsOW/LkNuY0t g==;
X-CSE-ConnectionGUID: rUS8uEJ6Sa6wu5Ib/AAG8w==
X-CSE-MsgGUID: F4lIw9FYQGyw99SpiAuq1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44277001"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44277001"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:48 -0700
X-CSE-ConnectionGUID: WHltS5q3R1yln12j5mmoFQ==
X-CSE-MsgGUID: TInq1BS2SfySGHHm8gMXRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490981"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 09/13] drm/i915/dsb: Introduce intel_dsb_wait_vblank_delay()
Date: Mon, 30 Sep 2024 20:04:11 +0300
Message-ID: <20240930170415.23841-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Add intel_dsb_wait_vblank_delay() which instructs the DSB
to wait for duration between the undelayed and delayed vblanks.
We'll need this as the DSB can only directly wait for the
undelayed vblank, but we'll need to wait until the delayed
vblank has elapsed as well.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fe9a1772769d..b7b44399adaa 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -637,6 +637,17 @@ void intel_dsb_chain(struct intel_atomic_state *state,
 			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
 }
 
+void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
+				 struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
+	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
+					     dsb_vblank_delay(crtc_state)) + 1;
+
+	intel_dsb_wait_usec(dsb, usecs);
+}
+
 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			      int hw_dewake_scanline)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 115f51c75a1e..33e0fc2ab380 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -42,6 +42,8 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb);
 void intel_dsb_interrupt(struct intel_dsb *dsb);
 void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
 void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
+void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
+				 struct intel_dsb *dsb);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.45.2

