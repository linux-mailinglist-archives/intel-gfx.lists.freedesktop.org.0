Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BADC2ACC8C0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C59210E703;
	Tue,  3 Jun 2025 14:08:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="glvijOXD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E289010E682;
 Tue,  3 Jun 2025 14:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959730; x=1780495730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PySYwzee9JKSQ5E70AEte8QDkuhGwSi0FF/mKBz6vRE=;
 b=glvijOXDnJ1sAFBK97SJPsNzO3QBtGHtSCCQQtx68Q7Ocy58l5FTcTEu
 Gw5kYZ+7p3U9ws5SqjkuxLhP1oibLihm8jFhWIFqbYc5LS2si/N82+Vxf
 lalZX6yEOrZ4kLYl/Uj+VKP3YjmfzLijgqJVWf37YD8ltOmnQi8xHPM3s
 vkp9RK4Am0r+9QajzUfRUhQ0op4Ix2qdRKzkej0Gdvnu3xWJq1OuoS02k
 5R+P0qp5BLb7AHv4NaDrA9pkymkBuvVvhmpWJQ+u8Ipm6IvxyP7gRa7RH
 YFgkMzcFw82AUxRK7bt97J8XeM/O3tIOLc+KSjd3PrVWzTQ28rp5PTLx1 g==;
X-CSE-ConnectionGUID: fu7WadMAT6qHrmelkALE9A==
X-CSE-MsgGUID: ThvxMSeNQGC1J1ylpXAbTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265805"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265805"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:08:49 -0700
X-CSE-ConnectionGUID: vsuLcRc7TB6IZoHFG3kGFw==
X-CSE-MsgGUID: /O79r9fxTA2xFJs6MR9xMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155629"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:08:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:08:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 03/12] drm/i915/dsb: Introduce intel_dsb_exec_time_us()
Date: Tue,  3 Jun 2025 17:08:27 +0300
Message-ID: <20250603140836.21432-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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

Pull the magic 20 usec DSB execution deadline into
intel_dsb_arm_exec_time_us(), and also add its counterapart
for the non-arming register write section. For the non-arming
part we'll just throw in a random 80 usec for now so the total
is 100usec. The total exec time will be needed by the upcoming
flip queue code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 26 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index f2b6e6f3216e..c2ccb271a690 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -685,14 +685,36 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	return errors;
 }
 
+/*
+ * FIXME calibrate these sensibly, ideally compute based on
+ * the number of regisetrs to be written. But that requires
+ * measuring the actual DSB execution speed on each platform
+ * (and the speed also depends on CDCLK and memory clock)...
+ */
+static int intel_dsb_noarm_exec_time_us(void)
+{
+	return 80;
+}
+
+static int intel_dsb_arm_exec_time_us(void)
+{
+	return 20;
+}
+
+int intel_dsb_exec_time_us(void)
+{
+	return intel_dsb_noarm_exec_time_us() +
+		intel_dsb_arm_exec_time_us();
+}
+
 void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 			    struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
-	/* FIXME calibrate sensibly */
-	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
+	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+					       intel_dsb_arm_exec_time_us());
 	int start, end;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index ab6489749866..6bcfb03f3415 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -35,6 +35,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_gosub_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
+int intel_dsb_exec_time_us(void);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
 void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
-- 
2.49.0

